; ModuleID = '/home/carl/AnghaBench/reactos/sdk/tools/wpp/extr_preproc.c_pp_open_include.c'
source_filename = "/home/carl/AnghaBench/reactos/sdk/tools/wpp/extr_preproc.c_pp_open_include.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i8* (i8*, i32, i8*, i32, i32)*, i8* (i8*, i32)* }
%struct.TYPE_4__ = type { i64 }

@wpp_callbacks = common dso_local global %struct.TYPE_3__* null, align 8
@includepath = common dso_local global i32 0, align 4
@nincludepath = common dso_local global i32 0, align 4
@pp_status = common dso_local global %struct.TYPE_4__ zeroinitializer, align 8
@.str = private unnamed_addr constant [23 x i8] c"Going to include <%s>\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @pp_open_include(i8* %0, i32 %1, i8* %2, i8** %3) #0 {
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i8**, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  store i8* %0, i8** %6, align 8
  store i32 %1, i32* %7, align 4
  store i8* %2, i8** %8, align 8
  store i8** %3, i8*** %9, align 8
  %12 = load %struct.TYPE_3__*, %struct.TYPE_3__** @wpp_callbacks, align 8
  %13 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %12, i32 0, i32 0
  %14 = load i8* (i8*, i32, i8*, i32, i32)*, i8* (i8*, i32, i8*, i32, i32)** %13, align 8
  %15 = load i8*, i8** %6, align 8
  %16 = load i32, i32* %7, align 4
  %17 = load i8*, i8** %8, align 8
  %18 = load i32, i32* @includepath, align 4
  %19 = load i32, i32* @nincludepath, align 4
  %20 = call i8* %14(i8* %15, i32 %16, i8* %17, i32 %18, i32 %19)
  store i8* %20, i8** %10, align 8
  %21 = icmp ne i8* %20, null
  br i1 %21, label %23, label %22

22:                                               ; preds = %4
  store i8* null, i8** %5, align 8
  br label %52

23:                                               ; preds = %4
  %24 = load %struct.TYPE_3__*, %struct.TYPE_3__** @wpp_callbacks, align 8
  %25 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %24, i32 0, i32 1
  %26 = load i8* (i8*, i32)*, i8* (i8*, i32)** %25, align 8
  %27 = load i8*, i8** %10, align 8
  %28 = load i32, i32* %7, align 4
  %29 = call i8* %26(i8* %27, i32 %28)
  store i8* %29, i8** %11, align 8
  %30 = load i8*, i8** %11, align 8
  %31 = icmp ne i8* %30, null
  br i1 %31, label %32, label %49

32:                                               ; preds = %23
  %33 = load i64, i64* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @pp_status, i32 0, i32 0), align 8
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %38

35:                                               ; preds = %32
  %36 = load i8*, i8** %10, align 8
  %37 = call i32 @printf(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i8* %36)
  br label %38

38:                                               ; preds = %35, %32
  %39 = load i8**, i8*** %9, align 8
  %40 = icmp ne i8** %39, null
  br i1 %40, label %41, label %44

41:                                               ; preds = %38
  %42 = load i8*, i8** %10, align 8
  %43 = load i8**, i8*** %9, align 8
  store i8* %42, i8** %43, align 8
  br label %47

44:                                               ; preds = %38
  %45 = load i8*, i8** %10, align 8
  %46 = call i32 @free(i8* %45)
  br label %47

47:                                               ; preds = %44, %41
  %48 = load i8*, i8** %11, align 8
  store i8* %48, i8** %5, align 8
  br label %52

49:                                               ; preds = %23
  %50 = load i8*, i8** %10, align 8
  %51 = call i32 @free(i8* %50)
  store i8* null, i8** %5, align 8
  br label %52

52:                                               ; preds = %49, %47, %22
  %53 = load i8*, i8** %5, align 8
  ret i8* %53
}

declare dso_local i32 @printf(i8*, i8*) #1

declare dso_local i32 @free(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
