; ModuleID = '/home/carl/AnghaBench/systemd/src/test/extr_test-user-util.c_main.c'
source_filename = "/home/carl/AnghaBench/systemd/src/test/extr_test-user-util.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [5 x i8] c"root\00", align 1
@UID_NOBODY = common dso_local global i32 0, align 4
@NOBODY_USER_NAME = common dso_local global i8* null, align 8
@.str.1 = private unnamed_addr constant [6 x i8] c"65535\00", align 1
@.str.2 = private unnamed_addr constant [11 x i8] c"4294967295\00", align 1
@GID_NOBODY = common dso_local global i32 0, align 4
@NOBODY_GROUP_NAME = common dso_local global i8* null, align 8
@TTY_GID = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [4 x i8] c"tty\00", align 1
@.str.4 = private unnamed_addr constant [6 x i8] c"/root\00", align 1
@.str.5 = private unnamed_addr constant [8 x i8] c"/bin/sh\00", align 1
@.str.6 = private unnamed_addr constant [2 x i8] c"0\00", align 1
@.str.7 = private unnamed_addr constant [2 x i8] c"/\00", align 1
@NOLOGIN = common dso_local global i8* null, align 8
@.str.8 = private unnamed_addr constant [6 x i8] c"65534\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  %6 = call i32 @test_uid_to_name_one(i32 0, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0))
  %7 = load i32, i32* @UID_NOBODY, align 4
  %8 = load i8*, i8** @NOBODY_USER_NAME, align 8
  %9 = call i32 @test_uid_to_name_one(i32 %7, i8* %8)
  %10 = call i32 @test_uid_to_name_one(i32 65535, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0))
  %11 = call i32 @test_uid_to_name_one(i32 -1, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.2, i64 0, i64 0))
  %12 = call i32 @test_gid_to_name_one(i32 0, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0))
  %13 = load i32, i32* @GID_NOBODY, align 4
  %14 = load i8*, i8** @NOBODY_GROUP_NAME, align 8
  %15 = call i32 @test_gid_to_name_one(i32 %13, i8* %14)
  %16 = load i32, i32* @TTY_GID, align 4
  %17 = call i32 @test_gid_to_name_one(i32 %16, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0))
  %18 = call i32 @test_gid_to_name_one(i32 65535, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0))
  %19 = call i32 @test_gid_to_name_one(i32 -1, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.2, i64 0, i64 0))
  %20 = call i32 @test_get_user_creds_one(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i32 0, i32 0, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.4, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.5, i64 0, i64 0))
  %21 = call i32 @test_get_user_creds_one(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.6, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i32 0, i32 0, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.4, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.5, i64 0, i64 0))
  %22 = load i8*, i8** @NOBODY_USER_NAME, align 8
  %23 = load i8*, i8** @NOBODY_USER_NAME, align 8
  %24 = load i32, i32* @UID_NOBODY, align 4
  %25 = load i32, i32* @GID_NOBODY, align 4
  %26 = load i8*, i8** @NOLOGIN, align 8
  %27 = call i32 @test_get_user_creds_one(i8* %22, i8* %23, i32 %24, i32 %25, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.7, i64 0, i64 0), i8* %26)
  %28 = load i8*, i8** @NOBODY_USER_NAME, align 8
  %29 = load i32, i32* @UID_NOBODY, align 4
  %30 = load i32, i32* @GID_NOBODY, align 4
  %31 = load i8*, i8** @NOLOGIN, align 8
  %32 = call i32 @test_get_user_creds_one(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.8, i64 0, i64 0), i8* %28, i32 %29, i32 %30, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.7, i64 0, i64 0), i8* %31)
  %33 = call i32 @test_get_group_creds_one(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i32 0)
  %34 = call i32 @test_get_group_creds_one(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.6, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i32 0)
  %35 = load i8*, i8** @NOBODY_GROUP_NAME, align 8
  %36 = load i8*, i8** @NOBODY_GROUP_NAME, align 8
  %37 = load i32, i32* @GID_NOBODY, align 4
  %38 = call i32 @test_get_group_creds_one(i8* %35, i8* %36, i32 %37)
  %39 = load i8*, i8** @NOBODY_GROUP_NAME, align 8
  %40 = load i32, i32* @GID_NOBODY, align 4
  %41 = call i32 @test_get_group_creds_one(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.8, i64 0, i64 0), i8* %39, i32 %40)
  %42 = call i32 (...) @test_parse_uid()
  %43 = call i32 (...) @test_uid_ptr()
  %44 = call i32 (...) @test_valid_user_group_name_compat()
  %45 = call i32 (...) @test_valid_user_group_name()
  %46 = call i32 (...) @test_valid_user_group_name_or_id_compat()
  %47 = call i32 (...) @test_valid_user_group_name_or_id()
  %48 = call i32 (...) @test_valid_gecos()
  %49 = call i32 (...) @test_valid_home()
  %50 = call i32 (...) @test_make_salt()
  %51 = call i32 (...) @test_in_gid()
  ret i32 0
}

declare dso_local i32 @test_uid_to_name_one(i32, i8*) #1

declare dso_local i32 @test_gid_to_name_one(i32, i8*) #1

declare dso_local i32 @test_get_user_creds_one(i8*, i8*, i32, i32, i8*, i8*) #1

declare dso_local i32 @test_get_group_creds_one(i8*, i8*, i32) #1

declare dso_local i32 @test_parse_uid(...) #1

declare dso_local i32 @test_uid_ptr(...) #1

declare dso_local i32 @test_valid_user_group_name_compat(...) #1

declare dso_local i32 @test_valid_user_group_name(...) #1

declare dso_local i32 @test_valid_user_group_name_or_id_compat(...) #1

declare dso_local i32 @test_valid_user_group_name_or_id(...) #1

declare dso_local i32 @test_valid_gecos(...) #1

declare dso_local i32 @test_valid_home(...) #1

declare dso_local i32 @test_make_salt(...) #1

declare dso_local i32 @test_in_gid(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
