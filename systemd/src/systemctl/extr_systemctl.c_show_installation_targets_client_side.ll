; ModuleID = '/home/carl/AnghaBench/systemd/src/systemctl/extr_systemctl.c_show_installation_targets_client_side.c'
source_filename = "/home/carl/AnghaBench/systemd/src/systemctl/extr_systemctl.c_show_installation_targets_client_side.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i64, i8* }

@UNIT_FILE_DRY_RUN = common dso_local global i32 0, align 4
@arg_runtime = common dso_local global i64 0, align 8
@UNIT_FILE_RUNTIME = common dso_local global i32 0, align 4
@UNIT_FILE_SYSTEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [36 x i8] c"Failed to get file links for %s: %m\00", align 1
@UNIT_FILE_UNLINK = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [6 x i8] c"  %s\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*)* @show_installation_targets_client_side to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @show_installation_targets_client_side(i8* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 8
  %4 = alloca %struct.TYPE_3__*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8**, align 8
  %9 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  store %struct.TYPE_3__* null, %struct.TYPE_3__** %4, align 8
  store i64 0, i64* %5, align 8
  %10 = load i8*, i8** %3, align 8
  %11 = call i8** @STRV_MAKE(i8* %10)
  store i8** %11, i8*** %8, align 8
  %12 = load i32, i32* @UNIT_FILE_DRY_RUN, align 4
  %13 = load i64, i64* @arg_runtime, align 8
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %17

15:                                               ; preds = %1
  %16 = load i32, i32* @UNIT_FILE_RUNTIME, align 4
  br label %18

17:                                               ; preds = %1
  br label %18

18:                                               ; preds = %17, %15
  %19 = phi i32 [ %16, %15 ], [ 0, %17 ]
  %20 = or i32 %12, %19
  store i32 %20, i32* %7, align 4
  %21 = load i32, i32* @UNIT_FILE_SYSTEM, align 4
  %22 = load i32, i32* %7, align 4
  %23 = load i8**, i8*** %8, align 8
  %24 = call i32 @unit_file_disable(i32 %21, i32 %22, i32* null, i8** %23, %struct.TYPE_3__** %4, i64* %5)
  store i32 %24, i32* %9, align 4
  %25 = load i32, i32* %9, align 4
  %26 = icmp slt i32 %25, 0
  br i1 %26, label %27, label %31

27:                                               ; preds = %18
  %28 = load i32, i32* %9, align 4
  %29 = load i8*, i8** %3, align 8
  %30 = call i32 @log_error_errno(i32 %28, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0), i8* %29)
  store i32 %30, i32* %2, align 4
  br label %56

31:                                               ; preds = %18
  store i64 0, i64* %6, align 8
  br label %32

32:                                               ; preds = %52, %31
  %33 = load i64, i64* %6, align 8
  %34 = load i64, i64* %5, align 8
  %35 = icmp ult i64 %33, %34
  br i1 %35, label %36, label %55

36:                                               ; preds = %32
  %37 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %38 = load i64, i64* %6, align 8
  %39 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %37, i64 %38
  %40 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = load i64, i64* @UNIT_FILE_UNLINK, align 8
  %43 = icmp eq i64 %41, %42
  br i1 %43, label %44, label %51

44:                                               ; preds = %36
  %45 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %46 = load i64, i64* %6, align 8
  %47 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %45, i64 %46
  %48 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %47, i32 0, i32 1
  %49 = load i8*, i8** %48, align 8
  %50 = call i32 @printf(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0), i8* %49)
  br label %51

51:                                               ; preds = %44, %36
  br label %52

52:                                               ; preds = %51
  %53 = load i64, i64* %6, align 8
  %54 = add i64 %53, 1
  store i64 %54, i64* %6, align 8
  br label %32

55:                                               ; preds = %32
  store i32 0, i32* %2, align 4
  br label %56

56:                                               ; preds = %55, %27
  %57 = load i32, i32* %2, align 4
  ret i32 %57
}

declare dso_local i8** @STRV_MAKE(i8*) #1

declare dso_local i32 @unit_file_disable(i32, i32, i32*, i8**, %struct.TYPE_3__**, i64*) #1

declare dso_local i32 @log_error_errno(i32, i8*, i8*) #1

declare dso_local i32 @printf(i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
