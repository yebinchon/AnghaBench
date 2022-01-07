; ModuleID = '/home/carl/AnghaBench/redis/src/extr_object.c_getLongDoubleFromObject.c'
source_filename = "/home/carl/AnghaBench/redis/src/extr_object.c_getLongDoubleFromObject.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i64, i64, i64 }

@OBJ_STRING = common dso_local global i64 0, align 8
@errno = common dso_local global i64 0, align 8
@ERANGE = common dso_local global i64 0, align 8
@HUGE_VAL = common dso_local global x86_fp80 0xK00000000000000000000, align 16
@C_ERR = common dso_local global i32 0, align 4
@OBJ_ENCODING_INT = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [24 x i8] c"Unknown string encoding\00", align 1
@C_OK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @getLongDoubleFromObject(%struct.TYPE_5__* %0, x86_fp80* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_5__*, align 8
  %5 = alloca x86_fp80*, align 8
  %6 = alloca x86_fp80, align 16
  %7 = alloca i8*, align 8
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %4, align 8
  store x86_fp80* %1, x86_fp80** %5, align 8
  %8 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %9 = icmp eq %struct.TYPE_5__* %8, null
  br i1 %9, label %10, label %11

10:                                               ; preds = %2
  store x86_fp80 0xK00000000000000000000, x86_fp80* %6, align 16
  br label %94

11:                                               ; preds = %2
  %12 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %13 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %14 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = load i64, i64* @OBJ_STRING, align 8
  %17 = icmp eq i64 %15, %16
  %18 = zext i1 %17 to i32
  %19 = call i32 @serverAssertWithInfo(i32* null, %struct.TYPE_5__* %12, i32 %18)
  %20 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %21 = call i64 @sdsEncodedObject(%struct.TYPE_5__* %20)
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %79

23:                                               ; preds = %11
  store i64 0, i64* @errno, align 8
  %24 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %25 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %24, i32 0, i32 2
  %26 = load i64, i64* %25, align 8
  %27 = call x86_fp80 @strtold(i64 %26, i8** %7)
  store x86_fp80 %27, x86_fp80* %6, align 16
  %28 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %29 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %28, i32 0, i32 2
  %30 = load i64, i64* %29, align 8
  %31 = call i64 @sdslen(i64 %30)
  %32 = icmp eq i64 %31, 0
  br i1 %32, label %76, label %33

33:                                               ; preds = %23
  %34 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %35 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %34, i32 0, i32 2
  %36 = load i64, i64* %35, align 8
  %37 = inttoptr i64 %36 to i8*
  %38 = getelementptr inbounds i8, i8* %37, i64 0
  %39 = load i8, i8* %38, align 1
  %40 = call i64 @isspace(i8 signext %39)
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %76, label %42

42:                                               ; preds = %33
  %43 = load i8*, i8** %7, align 8
  %44 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %45 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %44, i32 0, i32 2
  %46 = load i64, i64* %45, align 8
  %47 = inttoptr i64 %46 to i8*
  %48 = ptrtoint i8* %43 to i64
  %49 = ptrtoint i8* %47 to i64
  %50 = sub i64 %48, %49
  %51 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %52 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %51, i32 0, i32 2
  %53 = load i64, i64* %52, align 8
  %54 = call i64 @sdslen(i64 %53)
  %55 = icmp ne i64 %50, %54
  br i1 %55, label %76, label %56

56:                                               ; preds = %42
  %57 = load i64, i64* @errno, align 8
  %58 = load i64, i64* @ERANGE, align 8
  %59 = icmp eq i64 %57, %58
  br i1 %59, label %60, label %72

60:                                               ; preds = %56
  %61 = load x86_fp80, x86_fp80* %6, align 16
  %62 = load x86_fp80, x86_fp80* @HUGE_VAL, align 16
  %63 = fcmp oeq x86_fp80 %61, %62
  br i1 %63, label %76, label %64

64:                                               ; preds = %60
  %65 = load x86_fp80, x86_fp80* %6, align 16
  %66 = load x86_fp80, x86_fp80* @HUGE_VAL, align 16
  %67 = fneg x86_fp80 %66
  %68 = fcmp oeq x86_fp80 %65, %67
  br i1 %68, label %76, label %69

69:                                               ; preds = %64
  %70 = load x86_fp80, x86_fp80* %6, align 16
  %71 = fcmp oeq x86_fp80 %70, 0xK00000000000000000000
  br i1 %71, label %76, label %72

72:                                               ; preds = %69, %56
  %73 = load x86_fp80, x86_fp80* %6, align 16
  %74 = call i64 @isnan(x86_fp80 %73)
  %75 = icmp ne i64 %74, 0
  br i1 %75, label %76, label %78

76:                                               ; preds = %72, %69, %64, %60, %42, %33, %23
  %77 = load i32, i32* @C_ERR, align 4
  store i32 %77, i32* %3, align 4
  br label %98

78:                                               ; preds = %72
  br label %93

79:                                               ; preds = %11
  %80 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %81 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %80, i32 0, i32 1
  %82 = load i64, i64* %81, align 8
  %83 = load i64, i64* @OBJ_ENCODING_INT, align 8
  %84 = icmp eq i64 %82, %83
  br i1 %84, label %85, label %90

85:                                               ; preds = %79
  %86 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %87 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %86, i32 0, i32 2
  %88 = load i64, i64* %87, align 8
  %89 = sitofp i64 %88 to x86_fp80
  store x86_fp80 %89, x86_fp80* %6, align 16
  br label %92

90:                                               ; preds = %79
  %91 = call i32 @serverPanic(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0))
  br label %92

92:                                               ; preds = %90, %85
  br label %93

93:                                               ; preds = %92, %78
  br label %94

94:                                               ; preds = %93, %10
  %95 = load x86_fp80, x86_fp80* %6, align 16
  %96 = load x86_fp80*, x86_fp80** %5, align 8
  store x86_fp80 %95, x86_fp80* %96, align 16
  %97 = load i32, i32* @C_OK, align 4
  store i32 %97, i32* %3, align 4
  br label %98

98:                                               ; preds = %94, %76
  %99 = load i32, i32* %3, align 4
  ret i32 %99
}

declare dso_local i32 @serverAssertWithInfo(i32*, %struct.TYPE_5__*, i32) #1

declare dso_local i64 @sdsEncodedObject(%struct.TYPE_5__*) #1

declare dso_local x86_fp80 @strtold(i64, i8**) #1

declare dso_local i64 @sdslen(i64) #1

declare dso_local i64 @isspace(i8 signext) #1

declare dso_local i64 @isnan(x86_fp80) #1

declare dso_local i32 @serverPanic(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
