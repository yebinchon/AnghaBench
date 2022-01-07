; ModuleID = '/home/carl/AnghaBench/timescaledb/src/extr_extension_utils.c_extension_load_without_preload.c'
source_filename = "/home/carl/AnghaBench/timescaledb/src/extr_extension_utils.c_extension_load_without_preload.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [42 x i8] c"timescaledb.allow_install_without_preload\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"on\00", align 1
@DEFAULT_ROLE_READ_ALL_SETTINGS = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [12 x i8] c"config_file\00", align 1
@FATAL = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [33 x i8] c"extension \22%s\22 must be preloaded\00", align 1
@EXTENSION_NAME = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [627 x i8] c"Please preload the timescaledb library via shared_preload_libraries.\0A\0AThis can be done by editing the config file at: %1$s\0Aand adding 'timescaledb' to the list in the shared_preload_libraries config.\0A\09# Modify postgresql.conf:\0A\09shared_preload_libraries = 'timescaledb'\0A\0AAnother way to do this, if not preloading other libraries, is with the command:\0A\09echo \22shared_preload_libraries = 'timescaledb'\22 >> %1$s \0A\0A(Will require a database restart.)\0A\0AIf you REALLY know what you are doing and would like to load the library without preloading, you can disable this check with: \0A\09SET timescaledb.allow_install_without_preload = 'on';\00", align 1
@.str.5 = private unnamed_addr constant [644 x i8] c"Please preload the timescaledb library via shared_preload_libraries.\0A\0AThis can be done by editing the postgres config file \0Aand adding 'timescaledb' to the list in the shared_preload_libraries config.\0A\09# Modify postgresql.conf:\0A\09shared_preload_libraries = 'timescaledb'\0A\0AAnother way to do this, if not preloading other libraries, is with the command:\0A\09echo \22shared_preload_libraries = 'timescaledb'\22 >> /path/to/config/file \0A\0A(Will require a database restart.)\0A\0AIf you REALLY know what you are doing and would like to load the library without preloading, you can disable this check with: \0A\09SET timescaledb.allow_install_without_preload = 'on';\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @extension_load_without_preload to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @extension_load_without_preload() #0 {
  %1 = alloca i8*, align 8
  %2 = alloca i8*, align 8
  %3 = call i8* @GetConfigOptionByName(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str, i64 0, i64 0), i32* null, i32 1)
  store i8* %3, i8** %1, align 8
  %4 = load i8*, i8** %1, align 8
  %5 = icmp eq i8* %4, null
  br i1 %5, label %10, label %6

6:                                                ; preds = %0
  %7 = load i8*, i8** %1, align 8
  %8 = call i64 @strcmp(i8* %7, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0))
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %10, label %30

10:                                               ; preds = %6, %0
  %11 = call i32 (...) @GetUserId()
  %12 = load i32, i32* @DEFAULT_ROLE_READ_ALL_SETTINGS, align 4
  %13 = call i64 @is_member_of_role(i32 %11, i32 %12)
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %23

15:                                               ; preds = %10
  %16 = call i8* @GetConfigOptionByName(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.2, i64 0, i64 0), i32* null, i32 0)
  store i8* %16, i8** %2, align 8
  %17 = load i32, i32* @FATAL, align 4
  %18 = load i32, i32* @EXTENSION_NAME, align 4
  %19 = call i32 @errmsg(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.3, i64 0, i64 0), i32 %18)
  %20 = load i8*, i8** %2, align 8
  %21 = call i32 (i8*, ...) @errhint(i8* getelementptr inbounds ([627 x i8], [627 x i8]* @.str.4, i64 0, i64 0), i8* %20)
  %22 = call i32 @ereport(i32 %17, i32 %21)
  br label %29

23:                                               ; preds = %10
  %24 = load i32, i32* @FATAL, align 4
  %25 = load i32, i32* @EXTENSION_NAME, align 4
  %26 = call i32 @errmsg(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.3, i64 0, i64 0), i32 %25)
  %27 = call i32 (i8*, ...) @errhint(i8* getelementptr inbounds ([644 x i8], [644 x i8]* @.str.5, i64 0, i64 0))
  %28 = call i32 @ereport(i32 %24, i32 %27)
  br label %29

29:                                               ; preds = %23, %15
  br label %30

30:                                               ; preds = %29, %6
  ret void
}

declare dso_local i8* @GetConfigOptionByName(i8*, i32*, i32) #1

declare dso_local i64 @strcmp(i8*, i8*) #1

declare dso_local i64 @is_member_of_role(i32, i32) #1

declare dso_local i32 @GetUserId(...) #1

declare dso_local i32 @ereport(i32, i32) #1

declare dso_local i32 @errmsg(i8*, i32) #1

declare dso_local i32 @errhint(i8*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
