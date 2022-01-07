; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/msi/extr_patch.c_msi_check_patch_applicable.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/msi/extr_patch.c_msi_check_patch_applicable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32 }

@ERROR_FUNCTION_FAILED = common dso_local global i64 0, align 8
@szProductCode = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [26 x i8] c"no product code to check\0A\00", align 1
@ERROR_SUCCESS = common dso_local global i64 0, align 8
@PID_TEMPLATE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @msi_check_patch_applicable(%struct.TYPE_3__* %0, i32* %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca %struct.TYPE_3__*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32****, align 8
  %7 = alloca i32*****, align 8
  %8 = alloca i32****, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %4, align 8
  store i32* %1, i32** %5, align 8
  %11 = load i64, i64* @ERROR_FUNCTION_FAILED, align 8
  store i64 %11, i64* %10, align 8
  %12 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %13 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = load i32, i32* @szProductCode, align 4
  %16 = call i32****** @msi_dup_property(i32 %14, i32 %15)
  %17 = bitcast i32****** %16 to i32****
  store i32**** %17, i32***** %8, align 8
  %18 = load i32****, i32***** %8, align 8
  %19 = icmp ne i32**** %18, null
  br i1 %19, label %23, label %20

20:                                               ; preds = %2
  %21 = call i32 @ERR(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0))
  %22 = load i64, i64* @ERROR_SUCCESS, align 8
  store i64 %22, i64* %3, align 8
  br label %66

23:                                               ; preds = %2
  %24 = load i32*, i32** %5, align 8
  %25 = load i32, i32* @PID_TEMPLATE, align 4
  %26 = call i32****** @msi_suminfo_dup_string(i32* %24, i32 %25)
  %27 = bitcast i32****** %26 to i32****
  store i32**** %27, i32***** %6, align 8
  %28 = load i32****, i32***** %6, align 8
  %29 = call i32******* @msi_split_string(i32**** %28, i8 signext 59)
  %30 = bitcast i32******* %29 to i32*****
  store i32***** %30, i32****** %7, align 8
  store i64 0, i64* %9, align 8
  br label %31

31:                                               ; preds = %54, %23
  %32 = load i32*****, i32****** %7, align 8
  %33 = load i64, i64* %9, align 8
  %34 = getelementptr inbounds i32****, i32***** %32, i64 %33
  %35 = load i32****, i32***** %34, align 8
  %36 = icmp ne i32**** %35, null
  br i1 %36, label %37, label %41

37:                                               ; preds = %31
  %38 = load i64, i64* %10, align 8
  %39 = load i64, i64* @ERROR_SUCCESS, align 8
  %40 = icmp ne i64 %38, %39
  br label %41

41:                                               ; preds = %37, %31
  %42 = phi i1 [ false, %31 ], [ %40, %37 ]
  br i1 %42, label %43, label %57

43:                                               ; preds = %41
  %44 = load i32*****, i32****** %7, align 8
  %45 = load i64, i64* %9, align 8
  %46 = getelementptr inbounds i32****, i32***** %44, i64 %45
  %47 = load i32****, i32***** %46, align 8
  %48 = load i32****, i32***** %8, align 8
  %49 = call i32 @strcmpW(i32**** %47, i32**** %48)
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %53, label %51

51:                                               ; preds = %43
  %52 = load i64, i64* @ERROR_SUCCESS, align 8
  store i64 %52, i64* %10, align 8
  br label %53

53:                                               ; preds = %51, %43
  br label %54

54:                                               ; preds = %53
  %55 = load i64, i64* %9, align 8
  %56 = add i64 %55, 1
  store i64 %56, i64* %9, align 8
  br label %31

57:                                               ; preds = %41
  %58 = load i32*****, i32****** %7, align 8
  %59 = bitcast i32***** %58 to i32****
  %60 = call i32 @msi_free(i32**** %59)
  %61 = load i32****, i32***** %6, align 8
  %62 = call i32 @msi_free(i32**** %61)
  %63 = load i32****, i32***** %8, align 8
  %64 = call i32 @msi_free(i32**** %63)
  %65 = load i64, i64* %10, align 8
  store i64 %65, i64* %3, align 8
  br label %66

66:                                               ; preds = %57, %20
  %67 = load i64, i64* %3, align 8
  ret i64 %67
}

declare dso_local i32****** @msi_dup_property(i32, i32) #1

declare dso_local i32 @ERR(i8*) #1

declare dso_local i32****** @msi_suminfo_dup_string(i32*, i32) #1

declare dso_local i32******* @msi_split_string(i32****, i8 signext) #1

declare dso_local i32 @strcmpW(i32****, i32****) #1

declare dso_local i32 @msi_free(i32****) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
