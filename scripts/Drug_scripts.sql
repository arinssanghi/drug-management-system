CREATE TABLE [dbo].[allergic_symp_master] (
	[allergic_id] [int] NOT NULL ,
	[allergic_name] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[allergic_descr_major_symp] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL 
) ON [PRIMARY]
GO

CREATE TABLE [dbo].[anti_allerg_symp_drug] (
	[anti_allerg_drug_id] [int] NOT NULL ,
	[allergic_id] [int] NOT NULL ,
	[any_special_instru] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL 
) ON [PRIMARY]
GO

CREATE TABLE [dbo].[anti_allergic_drug] (
	[anti_allerg_drug_id] [int] NOT NULL ,
	[anti_allerg_drug_sh_name] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[anti_allerg_drug_lo_name] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[anti_allerg_drug_general_desc] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL 
) ON [PRIMARY]
GO

CREATE TABLE [dbo].[clinical_cond_master] (
	[clinical_cond_id] [int] NOT NULL ,
	[clinical_cond_name] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[clinical_cond_commant] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[condition_id] [int] NULL 
) ON [PRIMARY]
GO

CREATE TABLE [dbo].[condition_master] (
	[condition_id] [int] NOT NULL ,
	[condition_name] [varchar] (10) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[condition_descr] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL 
) ON [PRIMARY]
GO

CREATE TABLE [dbo].[department_master] (
	[dept_no] [int] NOT NULL ,
	[dept_name] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[dept_descr] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[hig_desig_id] [int] NULL 
) ON [PRIMARY]
GO

CREATE TABLE [dbo].[designation_master] (
	[desig_id] [int] NOT NULL ,
	[desig_name] [varchar] (30) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[desig_descr] [varchar] (30) COLLATE SQL_Latin1_General_CP1_CI_AS NULL 
) ON [PRIMARY]
GO

CREATE TABLE [dbo].[drug_reaction_agent] (
	[drug_id] [int] NULL ,
	[reaction_agent_id] [int] NULL ,
	[reaction_standard_report] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL 
) ON [PRIMARY]
GO

CREATE TABLE [dbo].[drug_reg_master] (
	[drug_id] [int] NOT NULL ,
	[drug_short_name] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[drug_long_name] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[drug_general_descr] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[drug_chemical_analysis] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL 
) ON [PRIMARY]
GO

CREATE TABLE [dbo].[drug_trial_master] (
	[drug_trial_id] [int] NOT NULL ,
	[trial_start_date] [datetime] NULL ,
	[trial_complet_date] [datetime] NULL ,
	[purpose_of_trial] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[employee_no] [int] NULL ,
	[individual_id] [int] NULL ,
	[drug_id] [int] NULL ,
	[trial_result_analy_descr] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[trial_status] [varchar] (20) COLLATE SQL_Latin1_General_CP1_CI_AS NULL 
) ON [PRIMARY]
GO

CREATE TABLE [dbo].[drug_usage_cond_master] (
	[drug_id] [int] NULL ,
	[drug_cond_id] [int] NULL 
) ON [PRIMARY]
GO

CREATE TABLE [dbo].[employee_master] (
	[employee_no] [int] NOT NULL ,
	[employee_name] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[employee_dob] [datetime] NULL ,
	[employee_address] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[employee_phone] [numeric](18, 0) NULL ,
	[employee_email] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[employee_gender] [varchar] (10) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[employee_doj] [datetime] NULL ,
	[dept_no] [int] NULL ,
	[desig_id] [int] NULL 
) ON [PRIMARY]
GO

CREATE TABLE [dbo].[individual_allergic_master] (
	[drug_trial_id] [int] NOT NULL ,
	[allergic_id] [int] NOT NULL 
) ON [PRIMARY]
GO

CREATE TABLE [dbo].[individual_clinical_master] (
	[individual_id] [int] NULL ,
	[clinical_cond_id] [int] NULL ,
	[first_diagnosis_date] [datetime] NULL ,
	[initial_sympt_descr] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[status_cond] [varchar] (20) COLLATE SQL_Latin1_General_CP1_CI_AS NULL 
) ON [PRIMARY]
GO

CREATE TABLE [dbo].[individual_master] (
	[individual_id] [int] NOT NULL ,
	[individual_name] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[individual_dob] [datetime] NULL ,
	[individual_gender] [varchar] (10) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[individual_address] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[individual_phone] [numeric](18, 0) NULL ,
	[individual_email] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL 
) ON [PRIMARY]
GO

CREATE TABLE [dbo].[individual_reaction_master] (
	[drug_trial_id] [int] NOT NULL ,
	[reaction_agent_id] [int] NOT NULL 
) ON [PRIMARY]
GO

CREATE TABLE [dbo].[login_master] (
	[user_name] [varchar] (20) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL ,
	[password] [varchar] (30) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL ,
	[profile_id] [int] NULL ,
	[reg_id] [int] NULL 
) ON [PRIMARY]
GO

CREATE TABLE [dbo].[profile_master] (
	[profile_id] [int] NOT NULL ,
	[profile_name] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[profile_descr] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL 
) ON [PRIMARY]
GO

CREATE TABLE [dbo].[reaction_agent_master] (
	[reaction_agent_id] [int] NOT NULL ,
	[reaction_short_name] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[reaction_long_name] [varchar] (30) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[reaction_general_descr] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL 
) ON [PRIMARY]
GO

CREATE TABLE [dbo].[usage_condition_master] (
	[drug_cond_id] [int] NOT NULL ,
	[drug_cond_descr] [varchar] (30) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[any_other_details] [varchar] (30) COLLATE SQL_Latin1_General_CP1_CI_AS NULL 
) ON [PRIMARY]
GO

ALTER TABLE [dbo].[allergic_symp_master] WITH NOCHECK ADD 
	 PRIMARY KEY  CLUSTERED 
	(
		[allergic_id]
	)  ON [PRIMARY] 
GO

ALTER TABLE [dbo].[anti_allerg_symp_drug] WITH NOCHECK ADD 
	 PRIMARY KEY  CLUSTERED 
	(
		[anti_allerg_drug_id],
		[allergic_id]
	)  ON [PRIMARY] 
GO

ALTER TABLE [dbo].[anti_allergic_drug] WITH NOCHECK ADD 
	 PRIMARY KEY  CLUSTERED 
	(
		[anti_allerg_drug_id]
	)  ON [PRIMARY] 
GO

ALTER TABLE [dbo].[clinical_cond_master] WITH NOCHECK ADD 
	 PRIMARY KEY  CLUSTERED 
	(
		[clinical_cond_id]
	)  ON [PRIMARY] 
GO

ALTER TABLE [dbo].[condition_master] WITH NOCHECK ADD 
	 PRIMARY KEY  CLUSTERED 
	(
		[condition_id]
	)  ON [PRIMARY] 
GO

ALTER TABLE [dbo].[department_master] WITH NOCHECK ADD 
	 PRIMARY KEY  CLUSTERED 
	(
		[dept_no]
	)  ON [PRIMARY] 
GO

ALTER TABLE [dbo].[designation_master] WITH NOCHECK ADD 
	 PRIMARY KEY  CLUSTERED 
	(
		[desig_id]
	)  ON [PRIMARY] 
GO

ALTER TABLE [dbo].[drug_reg_master] WITH NOCHECK ADD 
	 PRIMARY KEY  CLUSTERED 
	(
		[drug_id]
	)  ON [PRIMARY] 
GO

ALTER TABLE [dbo].[drug_trial_master] WITH NOCHECK ADD 
	CONSTRAINT [PK__drug_trial_maste__3F466844] PRIMARY KEY  CLUSTERED 
	(
		[drug_trial_id]
	)  ON [PRIMARY] 
GO

ALTER TABLE [dbo].[employee_master] WITH NOCHECK ADD 
	 PRIMARY KEY  CLUSTERED 
	(
		[employee_no]
	)  ON [PRIMARY] 
GO

ALTER TABLE [dbo].[individual_allergic_master] WITH NOCHECK ADD 
	 PRIMARY KEY  CLUSTERED 
	(
		[drug_trial_id],
		[allergic_id]
	)  ON [PRIMARY] 
GO

ALTER TABLE [dbo].[individual_master] WITH NOCHECK ADD 
	 PRIMARY KEY  CLUSTERED 
	(
		[individual_id]
	)  ON [PRIMARY] 
GO

ALTER TABLE [dbo].[individual_reaction_master] WITH NOCHECK ADD 
	 PRIMARY KEY  CLUSTERED 
	(
		[drug_trial_id],
		[reaction_agent_id]
	)  ON [PRIMARY] 
GO

ALTER TABLE [dbo].[login_master] WITH NOCHECK ADD 
	 PRIMARY KEY  CLUSTERED 
	(
		[user_name],
		[password]
	)  ON [PRIMARY] 
GO

ALTER TABLE [dbo].[profile_master] WITH NOCHECK ADD 
	 PRIMARY KEY  CLUSTERED 
	(
		[profile_id]
	)  ON [PRIMARY] 
GO

ALTER TABLE [dbo].[reaction_agent_master] WITH NOCHECK ADD 
	 PRIMARY KEY  CLUSTERED 
	(
		[reaction_agent_id]
	)  ON [PRIMARY] 
GO

ALTER TABLE [dbo].[usage_condition_master] WITH NOCHECK ADD 
	 PRIMARY KEY  CLUSTERED 
	(
		[drug_cond_id]
	)  ON [PRIMARY] 
GO

ALTER TABLE [dbo].[anti_allerg_symp_drug] ADD 
	 FOREIGN KEY 
	(
		[allergic_id]
	) REFERENCES [dbo].[allergic_symp_master] (
		[allergic_id]
	),
	 FOREIGN KEY 
	(
		[anti_allerg_drug_id]
	) REFERENCES [dbo].[anti_allergic_drug] (
		[anti_allerg_drug_id]
	)
GO

ALTER TABLE [dbo].[clinical_cond_master] ADD 
	 FOREIGN KEY 
	(
		[condition_id]
	) REFERENCES [dbo].[condition_master] (
		[condition_id]
	)
GO

ALTER TABLE [dbo].[drug_reaction_agent] ADD 
	 FOREIGN KEY 
	(
		[drug_id]
	) REFERENCES [dbo].[drug_reg_master] (
		[drug_id]
	),
	 FOREIGN KEY 
	(
		[reaction_agent_id]
	) REFERENCES [dbo].[reaction_agent_master] (
		[reaction_agent_id]
	)
GO

ALTER TABLE [dbo].[drug_trial_master] ADD 
	CONSTRAINT [FK__drug_tria__drug___4222D4EF] FOREIGN KEY 
	(
		[drug_id]
	) REFERENCES [dbo].[drug_reg_master] (
		[drug_id]
	),
	CONSTRAINT [FK__drug_tria__emplo__403A8C7D] FOREIGN KEY 
	(
		[employee_no]
	) REFERENCES [dbo].[employee_master] (
		[employee_no]
	),
	CONSTRAINT [FK__drug_tria__indiv__412EB0B6] FOREIGN KEY 
	(
		[individual_id]
	) REFERENCES [dbo].[individual_master] (
		[individual_id]
	)
GO

ALTER TABLE [dbo].[drug_usage_cond_master] ADD 
	 FOREIGN KEY 
	(
		[drug_id]
	) REFERENCES [dbo].[drug_reg_master] (
		[drug_id]
	),
	 FOREIGN KEY 
	(
		[drug_cond_id]
	) REFERENCES [dbo].[usage_condition_master] (
		[drug_cond_id]
	)
GO

ALTER TABLE [dbo].[employee_master] ADD 
	 FOREIGN KEY 
	(
		[dept_no]
	) REFERENCES [dbo].[department_master] (
		[dept_no]
	),
	 FOREIGN KEY 
	(
		[desig_id]
	) REFERENCES [dbo].[designation_master] (
		[desig_id]
	)
GO

ALTER TABLE [dbo].[individual_allergic_master] ADD 
	 FOREIGN KEY 
	(
		[allergic_id]
	) REFERENCES [dbo].[allergic_symp_master] (
		[allergic_id]
	),
	CONSTRAINT [FK__individua__drug___6FE99F9F] FOREIGN KEY 
	(
		[drug_trial_id]
	) REFERENCES [dbo].[drug_trial_master] (
		[drug_trial_id]
	)
GO

ALTER TABLE [dbo].[individual_clinical_master] ADD 
	 FOREIGN KEY 
	(
		[clinical_cond_id]
	) REFERENCES [dbo].[clinical_cond_master] (
		[clinical_cond_id]
	),
	 FOREIGN KEY 
	(
		[individual_id]
	) REFERENCES [dbo].[individual_master] (
		[individual_id]
	)
GO

ALTER TABLE [dbo].[individual_reaction_master] ADD 
	CONSTRAINT [FK__individua__drug___73BA3083] FOREIGN KEY 
	(
		[drug_trial_id]
	) REFERENCES [dbo].[drug_trial_master] (
		[drug_trial_id]
	),
	 FOREIGN KEY 
	(
		[reaction_agent_id]
	) REFERENCES [dbo].[reaction_agent_master] (
		[reaction_agent_id]
	)
GO

ALTER TABLE [dbo].[login_master] ADD 
	 FOREIGN KEY 
	(
		[profile_id]
	) REFERENCES [dbo].[profile_master] (
		[profile_id]
	)
GO

SET QUOTED_IDENTIFIER ON 
GO
SET ANSI_NULLS ON 
GO

create procedure dept_insert
@dept_no int,
@dept_name varchar(50),
@dept_descr varchar (50),
@hig_desig_id int
as
insert into department_master values
(@dept_no,@dept_name,@dept_descr,@hig_desig_id)

GO
SET QUOTED_IDENTIFIER OFF 
GO
SET ANSI_NULLS ON 
GO

SET QUOTED_IDENTIFIER ON 
GO
SET ANSI_NULLS ON 
GO

create procedure desig_insert
@desig_id int,
@desig_name varchar(30),
@desig_descr varchar (30)
as
insert into designation_master values
(@desig_id,@desig_name,@desig_descr)

GO
SET QUOTED_IDENTIFIER OFF 
GO
SET ANSI_NULLS ON 
GO

SET QUOTED_IDENTIFIER ON 
GO
SET ANSI_NULLS ON 
GO

create procedure max_allergic_id
as
select max(allergic_id)+1 from allergic_symp_master

GO
SET QUOTED_IDENTIFIER OFF 
GO
SET ANSI_NULLS ON 
GO

SET QUOTED_IDENTIFIER ON 
GO
SET ANSI_NULLS ON 
GO

create procedure max_anti_durg
as
select max(anti_allerg_drug_id)+1 from anti_allergic_drug

GO
SET QUOTED_IDENTIFIER OFF 
GO
SET ANSI_NULLS ON 
GO

SET QUOTED_IDENTIFIER ON 
GO
SET ANSI_NULLS ON 
GO

create procedure max_cli_id
as
select max(clinical_cond_id)+1 from clinical_cond_master

GO
SET QUOTED_IDENTIFIER OFF 
GO
SET ANSI_NULLS ON 
GO

SET QUOTED_IDENTIFIER ON 
GO
SET ANSI_NULLS ON 
GO

create procedure max_cond_id
as
select max(condition_id)+1 from condition_master

GO
SET QUOTED_IDENTIFIER OFF 
GO
SET ANSI_NULLS ON 
GO

SET QUOTED_IDENTIFIER ON 
GO
SET ANSI_NULLS ON 
GO

create procedure max_dept_no
as
select max(dept_no)+1 from department_master

GO
SET QUOTED_IDENTIFIER OFF 
GO
SET ANSI_NULLS ON 
GO

SET QUOTED_IDENTIFIER ON 
GO
SET ANSI_NULLS ON 
GO

create procedure max_desig_id
as
select max(desig_id)+1 from designation_master

GO
SET QUOTED_IDENTIFIER OFF 
GO
SET ANSI_NULLS ON 
GO

SET QUOTED_IDENTIFIER ON 
GO
SET ANSI_NULLS ON 
GO

create procedure max_drug_id
as
select max(drug_id)+1 from drug_reg_master

GO
SET QUOTED_IDENTIFIER OFF 
GO
SET ANSI_NULLS ON 
GO

SET QUOTED_IDENTIFIER ON 
GO
SET ANSI_NULLS ON 
GO

create procedure max_drug_trial_id
as
select max(drug_trial_id)+1 from drug_trial_master

GO
SET QUOTED_IDENTIFIER OFF 
GO
SET ANSI_NULLS ON 
GO

SET QUOTED_IDENTIFIER ON 
GO
SET ANSI_NULLS ON 
GO

create procedure max_employee_no
as
select max(employee_no)+1 from employee_master 

GO
SET QUOTED_IDENTIFIER OFF 
GO
SET ANSI_NULLS ON 
GO

SET QUOTED_IDENTIFIER ON 
GO
SET ANSI_NULLS ON 
GO

create procedure max_individual_id
as
select max(individual_id)+1 from individual_master

GO
SET QUOTED_IDENTIFIER OFF 
GO
SET ANSI_NULLS ON 
GO

SET QUOTED_IDENTIFIER ON 
GO
SET ANSI_NULLS ON 
GO

create procedure max_rea_id
as
select max(reaction_agent_id)+1 from reaction_agent_master

GO
SET QUOTED_IDENTIFIER OFF 
GO
SET ANSI_NULLS ON 
GO

SET QUOTED_IDENTIFIER ON 
GO
SET ANSI_NULLS ON 
GO

create procedure max_usage_id
as
select max(drug_cond_id)+1 from usage_condition_master

GO
SET QUOTED_IDENTIFIER OFF 
GO
SET ANSI_NULLS ON 
GO

