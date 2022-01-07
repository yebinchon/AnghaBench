; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/winetests/oleaut32/extr_usrmarshal.c_get_union_type.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/winetests/oleaut32/extr_usrmarshal.c_get_union_type.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i32 }

@FADF_VARIANT = common dso_local global i32 0, align 4
@SF_VARIANT = common dso_local global i32 0, align 4
@FADF_HAVEIID = common dso_local global i32 0, align 4
@SF_HAVEIID = common dso_local global i32 0, align 4
@SF_I1 = common dso_local global i32 0, align 4
@SF_I2 = common dso_local global i32 0, align 4
@SF_I4 = common dso_local global i32 0, align 4
@SF_I8 = common dso_local global i32 0, align 4
@SF_BSTR = common dso_local global i32 0, align 4
@SF_DISPATCH = common dso_local global i32 0, align 4
@SF_UNKNOWN = common dso_local global i32 0, align 4
@SF_RECORD = common dso_local global i32 0, align 4
@SF_ERROR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_4__*)* @get_union_type to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @get_union_type(%struct.TYPE_4__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_4__*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.TYPE_4__* %0, %struct.TYPE_4__** %3, align 8
  %6 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %7 = call i32 @pSafeArrayGetVartype(%struct.TYPE_4__* %6, i32* %4)
  store i32 %7, i32* %5, align 4
  %8 = load i32, i32* %5, align 4
  %9 = call i64 @FAILED(i32 %8)
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %30

11:                                               ; preds = %1
  %12 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %13 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = load i32, i32* @FADF_VARIANT, align 4
  %16 = and i32 %14, %15
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %20

18:                                               ; preds = %11
  %19 = load i32, i32* @SF_VARIANT, align 4
  store i32 %19, i32* %2, align 4
  br label %63

20:                                               ; preds = %11
  %21 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %22 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 4
  switch i32 %23, label %28 [
    i32 1, label %24
    i32 2, label %25
    i32 4, label %26
    i32 8, label %27
  ]

24:                                               ; preds = %20
  store i32 144, i32* %4, align 4
  br label %29

25:                                               ; preds = %20
  store i32 143, i32* %4, align 4
  br label %29

26:                                               ; preds = %20
  store i32 142, i32* %4, align 4
  br label %29

27:                                               ; preds = %20
  store i32 141, i32* %4, align 4
  br label %29

28:                                               ; preds = %20
  store i32 0, i32* %2, align 4
  br label %63

29:                                               ; preds = %27, %26, %25, %24
  br label %30

30:                                               ; preds = %29, %1
  %31 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %32 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = load i32, i32* @FADF_HAVEIID, align 4
  %35 = and i32 %33, %34
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %39

37:                                               ; preds = %30
  %38 = load i32, i32* @SF_HAVEIID, align 4
  store i32 %38, i32* %2, align 4
  br label %63

39:                                               ; preds = %30
  %40 = load i32, i32* %4, align 4
  switch i32 %40, label %61 [
    i32 144, label %41
    i32 135, label %41
    i32 149, label %43
    i32 143, label %43
    i32 134, label %43
    i32 140, label %45
    i32 131, label %45
    i32 142, label %45
    i32 133, label %45
    i32 138, label %45
    i32 146, label %47
    i32 147, label %47
    i32 137, label %47
    i32 141, label %47
    i32 132, label %47
    i32 139, label %49
    i32 130, label %49
    i32 148, label %51
    i32 145, label %53
    i32 128, label %55
    i32 129, label %57
    i32 136, label %59
  ]

41:                                               ; preds = %39, %39
  %42 = load i32, i32* @SF_I1, align 4
  store i32 %42, i32* %2, align 4
  br label %63

43:                                               ; preds = %39, %39, %39
  %44 = load i32, i32* @SF_I2, align 4
  store i32 %44, i32* %2, align 4
  br label %63

45:                                               ; preds = %39, %39, %39, %39, %39
  %46 = load i32, i32* @SF_I4, align 4
  store i32 %46, i32* %2, align 4
  br label %63

47:                                               ; preds = %39, %39, %39, %39, %39
  %48 = load i32, i32* @SF_I8, align 4
  store i32 %48, i32* %2, align 4
  br label %63

49:                                               ; preds = %39, %39
  %50 = load i32, i32* @SF_I4, align 4
  store i32 %50, i32* %2, align 4
  br label %63

51:                                               ; preds = %39
  %52 = load i32, i32* @SF_BSTR, align 4
  store i32 %52, i32* %2, align 4
  br label %63

53:                                               ; preds = %39
  %54 = load i32, i32* @SF_DISPATCH, align 4
  store i32 %54, i32* %2, align 4
  br label %63

55:                                               ; preds = %39
  %56 = load i32, i32* @SF_VARIANT, align 4
  store i32 %56, i32* %2, align 4
  br label %63

57:                                               ; preds = %39
  %58 = load i32, i32* @SF_UNKNOWN, align 4
  store i32 %58, i32* %2, align 4
  br label %63

59:                                               ; preds = %39
  %60 = load i32, i32* @SF_RECORD, align 4
  store i32 %60, i32* %2, align 4
  br label %63

61:                                               ; preds = %39
  %62 = load i32, i32* @SF_ERROR, align 4
  store i32 %62, i32* %2, align 4
  br label %63

63:                                               ; preds = %61, %59, %57, %55, %53, %51, %49, %47, %45, %43, %41, %37, %28, %18
  %64 = load i32, i32* %2, align 4
  ret i32 %64
}

declare dso_local i32 @pSafeArrayGetVartype(%struct.TYPE_4__*, i32*) #1

declare dso_local i64 @FAILED(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
