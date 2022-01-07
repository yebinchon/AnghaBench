; ModuleID = '/home/carl/AnghaBench/xLua/build/luajit-2.1.0b3/src/extr_lj_crecord.c_crec_ct2irt.c'
source_filename = "/home/carl/AnghaBench/xLua/build/luajit-2.1.0b3/src/extr_lj_crecord.c_crec_ct2irt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32, i32 }

@CTF_FP = common dso_local global i32 0, align 4
@IRT_NUM = common dso_local global i64 0, align 8
@IRT_FLOAT = common dso_local global i64 0, align 8
@IRT_I8 = common dso_local global i64 0, align 8
@CTF_UNSIGNED = common dso_local global i32 0, align 4
@LJ_64 = common dso_local global i64 0, align 8
@IRT_P64 = common dso_local global i64 0, align 8
@IRT_P32 = common dso_local global i64 0, align 8
@IRT_CDATA = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i32*, %struct.TYPE_5__*)* @crec_ct2irt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @crec_ct2irt(i32* %0, %struct.TYPE_5__* %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca i32*, align 8
  %5 = alloca %struct.TYPE_5__*, align 8
  %6 = alloca i32, align 4
  store i32* %0, i32** %4, align 8
  store %struct.TYPE_5__* %1, %struct.TYPE_5__** %5, align 8
  %7 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %8 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  %10 = call i64 @ctype_isenum(i32 %9)
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %16

12:                                               ; preds = %2
  %13 = load i32*, i32** %4, align 8
  %14 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %15 = call %struct.TYPE_5__* @ctype_child(i32* %13, %struct.TYPE_5__* %14)
  store %struct.TYPE_5__* %15, %struct.TYPE_5__** %5, align 8
  br label %16

16:                                               ; preds = %12, %2
  %17 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %18 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = call i32 @ctype_isnum(i32 %19)
  %21 = call i64 @LJ_LIKELY(i32 %20)
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %73

23:                                               ; preds = %16
  %24 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %25 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = load i32, i32* @CTF_FP, align 4
  %28 = and i32 %26, %27
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %48

30:                                               ; preds = %23
  %31 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %32 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 4
  %34 = sext i32 %33 to i64
  %35 = icmp eq i64 %34, 8
  br i1 %35, label %36, label %38

36:                                               ; preds = %30
  %37 = load i64, i64* @IRT_NUM, align 8
  store i64 %37, i64* %3, align 8
  br label %121

38:                                               ; preds = %30
  %39 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %40 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 4
  %42 = sext i32 %41 to i64
  %43 = icmp eq i64 %42, 4
  br i1 %43, label %44, label %46

44:                                               ; preds = %38
  %45 = load i64, i64* @IRT_FLOAT, align 8
  store i64 %45, i64* %3, align 8
  br label %121

46:                                               ; preds = %38
  br label %47

47:                                               ; preds = %46
  br label %72

48:                                               ; preds = %23
  %49 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %50 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %49, i32 0, i32 1
  %51 = load i32, i32* %50, align 4
  %52 = call i32 @lj_fls(i32 %51)
  store i32 %52, i32* %6, align 4
  %53 = load i32, i32* %6, align 4
  %54 = icmp sle i32 %53, 3
  br i1 %54, label %55, label %71

55:                                               ; preds = %48
  %56 = load i64, i64* @IRT_I8, align 8
  %57 = load i32, i32* %6, align 4
  %58 = mul nsw i32 2, %57
  %59 = sext i32 %58 to i64
  %60 = add nsw i64 %56, %59
  %61 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %62 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 4
  %64 = load i32, i32* @CTF_UNSIGNED, align 4
  %65 = and i32 %63, %64
  %66 = icmp ne i32 %65, 0
  %67 = zext i1 %66 to i64
  %68 = select i1 %66, i32 1, i32 0
  %69 = sext i32 %68 to i64
  %70 = add nsw i64 %60, %69
  store i64 %70, i64* %3, align 8
  br label %121

71:                                               ; preds = %48
  br label %72

72:                                               ; preds = %71, %47
  br label %119

73:                                               ; preds = %16
  %74 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %75 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 4
  %77 = call i64 @ctype_isptr(i32 %76)
  %78 = icmp ne i64 %77, 0
  br i1 %78, label %79, label %93

79:                                               ; preds = %73
  %80 = load i64, i64* @LJ_64, align 8
  %81 = icmp ne i64 %80, 0
  br i1 %81, label %82, label %89

82:                                               ; preds = %79
  %83 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %84 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %83, i32 0, i32 1
  %85 = load i32, i32* %84, align 4
  %86 = icmp eq i32 %85, 8
  br i1 %86, label %87, label %89

87:                                               ; preds = %82
  %88 = load i64, i64* @IRT_P64, align 8
  br label %91

89:                                               ; preds = %82, %79
  %90 = load i64, i64* @IRT_P32, align 8
  br label %91

91:                                               ; preds = %89, %87
  %92 = phi i64 [ %88, %87 ], [ %90, %89 ]
  store i64 %92, i64* %3, align 8
  br label %121

93:                                               ; preds = %73
  %94 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %95 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %94, i32 0, i32 0
  %96 = load i32, i32* %95, align 4
  %97 = call i64 @ctype_iscomplex(i32 %96)
  %98 = icmp ne i64 %97, 0
  br i1 %98, label %99, label %117

99:                                               ; preds = %93
  %100 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %101 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %100, i32 0, i32 1
  %102 = load i32, i32* %101, align 4
  %103 = sext i32 %102 to i64
  %104 = icmp eq i64 %103, 16
  br i1 %104, label %105, label %107

105:                                              ; preds = %99
  %106 = load i64, i64* @IRT_NUM, align 8
  store i64 %106, i64* %3, align 8
  br label %121

107:                                              ; preds = %99
  %108 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %109 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %108, i32 0, i32 1
  %110 = load i32, i32* %109, align 4
  %111 = sext i32 %110 to i64
  %112 = icmp eq i64 %111, 8
  br i1 %112, label %113, label %115

113:                                              ; preds = %107
  %114 = load i64, i64* @IRT_FLOAT, align 8
  store i64 %114, i64* %3, align 8
  br label %121

115:                                              ; preds = %107
  br label %116

116:                                              ; preds = %115
  br label %117

117:                                              ; preds = %116, %93
  br label %118

118:                                              ; preds = %117
  br label %119

119:                                              ; preds = %118, %72
  %120 = load i64, i64* @IRT_CDATA, align 8
  store i64 %120, i64* %3, align 8
  br label %121

121:                                              ; preds = %119, %113, %105, %91, %55, %44, %36
  %122 = load i64, i64* %3, align 8
  ret i64 %122
}

declare dso_local i64 @ctype_isenum(i32) #1

declare dso_local %struct.TYPE_5__* @ctype_child(i32*, %struct.TYPE_5__*) #1

declare dso_local i64 @LJ_LIKELY(i32) #1

declare dso_local i32 @ctype_isnum(i32) #1

declare dso_local i32 @lj_fls(i32) #1

declare dso_local i64 @ctype_isptr(i32) #1

declare dso_local i64 @ctype_iscomplex(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
