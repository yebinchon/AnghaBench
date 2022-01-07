; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/winetests/schannel/extr_main.c_getNextSecPkgTable.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/winetests/schannel/extr_main.c_getNextSecPkgTable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32*, i64 }

@SECPKG_INTERFACE_VERSION = common dso_local global i64 0, align 8
@SECPKG_FUNCTION_TABLE_SIZE_1 = common dso_local global i64 0, align 8
@SECPKG_INTERFACE_VERSION_2 = common dso_local global i64 0, align 8
@SECPKG_FUNCTION_TABLE_SIZE_2 = common dso_local global i64 0, align 8
@SECPKG_INTERFACE_VERSION_3 = common dso_local global i64 0, align 8
@SECPKG_FUNCTION_TABLE_SIZE_3 = common dso_local global i64 0, align 8
@SECPKG_INTERFACE_VERSION_4 = common dso_local global i64 0, align 8
@SECPKG_FUNCTION_TABLE_SIZE_4 = common dso_local global i64 0, align 8
@SECPKG_INTERFACE_VERSION_5 = common dso_local global i64 0, align 8
@SECPKG_FUNCTION_TABLE_SIZE_5 = common dso_local global i64 0, align 8
@SECPKG_INTERFACE_VERSION_6 = common dso_local global i64 0, align 8
@SECPKG_FUNCTION_TABLE_SIZE_6 = common dso_local global i64 0, align 8
@SECPKG_INTERFACE_VERSION_7 = common dso_local global i64 0, align 8
@SECPKG_FUNCTION_TABLE_SIZE_7 = common dso_local global i64 0, align 8
@FALSE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [30 x i8] c"Unknown package version 0x%x\0A\00", align 1
@.str.1 = private unnamed_addr constant [44 x i8] c"Invalid function pointers for next package\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.TYPE_4__* (%struct.TYPE_4__*, i64)* @getNextSecPkgTable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.TYPE_4__* @getNextSecPkgTable(%struct.TYPE_4__* %0, i64 %1) #0 {
  %3 = alloca %struct.TYPE_4__*, align 8
  %4 = alloca %struct.TYPE_4__*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.TYPE_4__*, align 8
  store %struct.TYPE_4__* %0, %struct.TYPE_4__** %4, align 8
  store i64 %1, i64* %5, align 8
  %8 = load i64, i64* %5, align 8
  %9 = load i64, i64* @SECPKG_INTERFACE_VERSION, align 8
  %10 = icmp eq i64 %8, %9
  br i1 %10, label %11, label %13

11:                                               ; preds = %2
  %12 = load i64, i64* @SECPKG_FUNCTION_TABLE_SIZE_1, align 8
  store i64 %12, i64* %6, align 8
  br label %59

13:                                               ; preds = %2
  %14 = load i64, i64* %5, align 8
  %15 = load i64, i64* @SECPKG_INTERFACE_VERSION_2, align 8
  %16 = icmp eq i64 %14, %15
  br i1 %16, label %17, label %19

17:                                               ; preds = %13
  %18 = load i64, i64* @SECPKG_FUNCTION_TABLE_SIZE_2, align 8
  store i64 %18, i64* %6, align 8
  br label %58

19:                                               ; preds = %13
  %20 = load i64, i64* %5, align 8
  %21 = load i64, i64* @SECPKG_INTERFACE_VERSION_3, align 8
  %22 = icmp eq i64 %20, %21
  br i1 %22, label %23, label %25

23:                                               ; preds = %19
  %24 = load i64, i64* @SECPKG_FUNCTION_TABLE_SIZE_3, align 8
  store i64 %24, i64* %6, align 8
  br label %57

25:                                               ; preds = %19
  %26 = load i64, i64* %5, align 8
  %27 = load i64, i64* @SECPKG_INTERFACE_VERSION_4, align 8
  %28 = icmp eq i64 %26, %27
  br i1 %28, label %29, label %31

29:                                               ; preds = %25
  %30 = load i64, i64* @SECPKG_FUNCTION_TABLE_SIZE_4, align 8
  store i64 %30, i64* %6, align 8
  br label %56

31:                                               ; preds = %25
  %32 = load i64, i64* %5, align 8
  %33 = load i64, i64* @SECPKG_INTERFACE_VERSION_5, align 8
  %34 = icmp eq i64 %32, %33
  br i1 %34, label %35, label %37

35:                                               ; preds = %31
  %36 = load i64, i64* @SECPKG_FUNCTION_TABLE_SIZE_5, align 8
  store i64 %36, i64* %6, align 8
  br label %55

37:                                               ; preds = %31
  %38 = load i64, i64* %5, align 8
  %39 = load i64, i64* @SECPKG_INTERFACE_VERSION_6, align 8
  %40 = icmp eq i64 %38, %39
  br i1 %40, label %41, label %43

41:                                               ; preds = %37
  %42 = load i64, i64* @SECPKG_FUNCTION_TABLE_SIZE_6, align 8
  store i64 %42, i64* %6, align 8
  br label %54

43:                                               ; preds = %37
  %44 = load i64, i64* %5, align 8
  %45 = load i64, i64* @SECPKG_INTERFACE_VERSION_7, align 8
  %46 = icmp eq i64 %44, %45
  br i1 %46, label %47, label %49

47:                                               ; preds = %43
  %48 = load i64, i64* @SECPKG_FUNCTION_TABLE_SIZE_7, align 8
  store i64 %48, i64* %6, align 8
  br label %53

49:                                               ; preds = %43
  %50 = load i32, i32* @FALSE, align 4
  %51 = load i64, i64* %5, align 8
  %52 = call i32 @ok(i32 %50, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0), i64 %51)
  store %struct.TYPE_4__* null, %struct.TYPE_4__** %3, align 8
  br label %88

53:                                               ; preds = %47
  br label %54

54:                                               ; preds = %53, %41
  br label %55

55:                                               ; preds = %54, %35
  br label %56

56:                                               ; preds = %55, %29
  br label %57

57:                                               ; preds = %56, %23
  br label %58

58:                                               ; preds = %57, %17
  br label %59

59:                                               ; preds = %58, %11
  %60 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %61 = ptrtoint %struct.TYPE_4__* %60 to i64
  %62 = load i64, i64* %6, align 8
  %63 = add i64 %61, %62
  %64 = inttoptr i64 %63 to %struct.TYPE_4__*
  store %struct.TYPE_4__* %64, %struct.TYPE_4__** %7, align 8
  %65 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %66 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %65, i32 0, i32 1
  %67 = load i64, i64* %66, align 8
  %68 = inttoptr i64 %67 to i8*
  %69 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %70 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %69, i32 0, i32 0
  %71 = load i32*, i32** %70, align 8
  %72 = bitcast i32* %71 to i8*
  %73 = icmp eq i8* %68, %72
  br i1 %73, label %74, label %79

74:                                               ; preds = %59
  %75 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %76 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %75, i32 0, i32 0
  %77 = load i32*, i32** %76, align 8
  %78 = icmp ne i32* %77, null
  br label %79

79:                                               ; preds = %74, %59
  %80 = phi i1 [ false, %59 ], [ %78, %74 ]
  %81 = zext i1 %80 to i32
  %82 = call i64 @broken(i32 %81)
  %83 = icmp ne i64 %82, 0
  br i1 %83, label %84, label %86

84:                                               ; preds = %79
  %85 = call i32 @win_skip(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.1, i64 0, i64 0))
  store %struct.TYPE_4__* null, %struct.TYPE_4__** %3, align 8
  br label %88

86:                                               ; preds = %79
  %87 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  store %struct.TYPE_4__* %87, %struct.TYPE_4__** %3, align 8
  br label %88

88:                                               ; preds = %86, %84, %49
  %89 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  ret %struct.TYPE_4__* %89
}

declare dso_local i32 @ok(i32, i8*, i64) #1

declare dso_local i64 @broken(i32) #1

declare dso_local i32 @win_skip(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
