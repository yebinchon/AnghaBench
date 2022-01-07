; ModuleID = '/home/carl/AnghaBench/timescaledb/src/extr_license_guc.c_ts_license_on_assign.c'
source_filename = "/home/carl/AnghaBench/timescaledb/src/extr_license_guc.c_ts_license_on_assign.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 (i8*, i8*)*, i32 (...)* }

@can_load = common dso_local global i32 0, align 4
@ts_cm_functions = common dso_local global %struct.TYPE_2__* null, align 8
@tsl_handle = common dso_local global i32* null, align 8
@tsl_startup_fn = common dso_local global i32* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ts_license_on_assign(i8* %0, i8* %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  store i8* %0, i8** %3, align 8
  store i8* %1, i8** %4, align 8
  %5 = load i32, i32* @can_load, align 4
  %6 = icmp ne i32 %5, 0
  br i1 %6, label %8, label %7

7:                                                ; preds = %2
  br label %58

8:                                                ; preds = %2
  %9 = load i8*, i8** %3, align 8
  %10 = icmp ne i8* %9, null
  %11 = zext i1 %10 to i32
  %12 = call i32 @Assert(i32 %11)
  %13 = load i8*, i8** %3, align 8
  %14 = call i32 @TS_LICENSE_TYPE_IS_VALID(i8* %13)
  %15 = call i32 @Assert(i32 %14)
  %16 = load i8*, i8** %3, align 8
  %17 = call i64 @TS_LICENSE_IS_APACHE_ONLY(i8* %16)
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %36

19:                                               ; preds = %8
  %20 = call i32 (...) @current_license_can_downgrade_to_apache()
  %21 = call i32 @Assert(i32 %20)
  %22 = load i8*, i8** %4, align 8
  %23 = icmp eq i8* %22, null
  %24 = zext i1 %23 to i32
  %25 = call i32 @Assert(i32 %24)
  %26 = load %struct.TYPE_2__*, %struct.TYPE_2__** @ts_cm_functions, align 8
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i32 0, i32 1
  %28 = load i32 (...)*, i32 (...)** %27, align 8
  %29 = icmp ne i32 (...)* %28, null
  br i1 %29, label %30, label %35

30:                                               ; preds = %19
  %31 = load %struct.TYPE_2__*, %struct.TYPE_2__** @ts_cm_functions, align 8
  %32 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %31, i32 0, i32 1
  %33 = load i32 (...)*, i32 (...)** %32, align 8
  %34 = call i32 (...) %33()
  br label %35

35:                                               ; preds = %30, %19
  br label %58

36:                                               ; preds = %8
  %37 = load i32*, i32** @tsl_handle, align 8
  %38 = icmp ne i32* %37, null
  %39 = zext i1 %38 to i32
  %40 = call i32 @Assert(i32 %39)
  %41 = load i32*, i32** @tsl_startup_fn, align 8
  %42 = icmp ne i32* %41, null
  %43 = zext i1 %42 to i32
  %44 = call i32 @Assert(i32 %43)
  %45 = load i32*, i32** @tsl_startup_fn, align 8
  %46 = call i32 @CharGetDatum(i32 0)
  %47 = call i32 @DirectFunctionCall1(i32* %45, i32 %46)
  %48 = load i8*, i8** %4, align 8
  %49 = icmp ne i8* %48, null
  %50 = zext i1 %49 to i32
  %51 = call i32 @Assert(i32 %50)
  %52 = load %struct.TYPE_2__*, %struct.TYPE_2__** @ts_cm_functions, align 8
  %53 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %52, i32 0, i32 0
  %54 = load i32 (i8*, i8*)*, i32 (i8*, i8*)** %53, align 8
  %55 = load i8*, i8** %3, align 8
  %56 = load i8*, i8** %4, align 8
  %57 = call i32 %54(i8* %55, i8* %56)
  br label %58

58:                                               ; preds = %36, %35, %7
  ret void
}

declare dso_local i32 @Assert(i32) #1

declare dso_local i32 @TS_LICENSE_TYPE_IS_VALID(i8*) #1

declare dso_local i64 @TS_LICENSE_IS_APACHE_ONLY(i8*) #1

declare dso_local i32 @current_license_can_downgrade_to_apache(...) #1

declare dso_local i32 @DirectFunctionCall1(i32*, i32) #1

declare dso_local i32 @CharGetDatum(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
