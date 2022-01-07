; ModuleID = '/home/carl/AnghaBench/xLua/build/luajit-2.1.0b2/src/extr_lj_cconv.c_lj_cconv_compatptr.c'
source_filename = "/home/carl/AnghaBench/xLua/build/luajit-2.1.0b2/src/extr_lj_cconv.c_lj_cconv_compatptr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32, i64 }

@CCF_CAST = common dso_local global i32 0, align 4
@CCF_SAME = common dso_local global i32 0, align 4
@CCF_IGNQUAL = common dso_local global i32 0, align 4
@CTF_BOOL = common dso_local global i32 0, align 4
@CTF_FP = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @lj_cconv_compatptr(i32* %0, %struct.TYPE_6__* %1, %struct.TYPE_6__* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca %struct.TYPE_6__*, align 8
  %8 = alloca %struct.TYPE_6__*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store i32* %0, i32** %6, align 8
  store %struct.TYPE_6__* %1, %struct.TYPE_6__** %7, align 8
  store %struct.TYPE_6__* %2, %struct.TYPE_6__** %8, align 8
  store i32 %3, i32* %9, align 4
  %12 = load i32, i32* %9, align 4
  %13 = load i32, i32* @CCF_CAST, align 4
  %14 = and i32 %12, %13
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %148, label %16

16:                                               ; preds = %4
  %17 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %18 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %19 = icmp eq %struct.TYPE_6__* %17, %18
  br i1 %19, label %148, label %20

20:                                               ; preds = %16
  store i32 0, i32* %10, align 4
  store i32 0, i32* %11, align 4
  %21 = load i32*, i32** %6, align 8
  %22 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %23 = call %struct.TYPE_6__* @cconv_childqual(i32* %21, %struct.TYPE_6__* %22, i32* %10)
  store %struct.TYPE_6__* %23, %struct.TYPE_6__** %7, align 8
  %24 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %25 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = call i64 @ctype_isstruct(i32 %26)
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %33, label %29

29:                                               ; preds = %20
  %30 = load i32*, i32** %6, align 8
  %31 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %32 = call %struct.TYPE_6__* @cconv_childqual(i32* %30, %struct.TYPE_6__* %31, i32* %11)
  store %struct.TYPE_6__* %32, %struct.TYPE_6__** %8, align 8
  br label %33

33:                                               ; preds = %29, %20
  %34 = load i32, i32* %9, align 4
  %35 = load i32, i32* @CCF_SAME, align 4
  %36 = and i32 %34, %35
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %44

38:                                               ; preds = %33
  %39 = load i32, i32* %10, align 4
  %40 = load i32, i32* %11, align 4
  %41 = icmp ne i32 %39, %40
  br i1 %41, label %42, label %43

42:                                               ; preds = %38
  store i32 0, i32* %5, align 4
  br label %149

43:                                               ; preds = %38
  br label %71

44:                                               ; preds = %33
  %45 = load i32, i32* %9, align 4
  %46 = load i32, i32* @CCF_IGNQUAL, align 4
  %47 = and i32 %45, %46
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %70, label %49

49:                                               ; preds = %44
  %50 = load i32, i32* %10, align 4
  %51 = load i32, i32* %11, align 4
  %52 = and i32 %50, %51
  %53 = load i32, i32* %11, align 4
  %54 = icmp ne i32 %52, %53
  br i1 %54, label %55, label %56

55:                                               ; preds = %49
  store i32 0, i32* %5, align 4
  br label %149

56:                                               ; preds = %49
  %57 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %58 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 8
  %60 = call i64 @ctype_isvoid(i32 %59)
  %61 = icmp ne i64 %60, 0
  br i1 %61, label %68, label %62

62:                                               ; preds = %56
  %63 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %64 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 8
  %66 = call i64 @ctype_isvoid(i32 %65)
  %67 = icmp ne i64 %66, 0
  br i1 %67, label %68, label %69

68:                                               ; preds = %62, %56
  store i32 1, i32* %5, align 4
  br label %149

69:                                               ; preds = %62
  br label %70

70:                                               ; preds = %69, %44
  br label %71

71:                                               ; preds = %70, %43
  %72 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %73 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 8
  %75 = call i64 @ctype_type(i32 %74)
  %76 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %77 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 8
  %79 = call i64 @ctype_type(i32 %78)
  %80 = icmp ne i64 %75, %79
  br i1 %80, label %89, label %81

81:                                               ; preds = %71
  %82 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %83 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %82, i32 0, i32 1
  %84 = load i64, i64* %83, align 8
  %85 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %86 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %85, i32 0, i32 1
  %87 = load i64, i64* %86, align 8
  %88 = icmp ne i64 %84, %87
  br i1 %88, label %89, label %90

89:                                               ; preds = %81, %71
  store i32 0, i32* %5, align 4
  br label %149

90:                                               ; preds = %81
  %91 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %92 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %91, i32 0, i32 0
  %93 = load i32, i32* %92, align 8
  %94 = call i64 @ctype_isnum(i32 %93)
  %95 = icmp ne i64 %94, 0
  br i1 %95, label %96, label %111

96:                                               ; preds = %90
  %97 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %98 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %97, i32 0, i32 0
  %99 = load i32, i32* %98, align 8
  %100 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %101 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %100, i32 0, i32 0
  %102 = load i32, i32* %101, align 8
  %103 = xor i32 %99, %102
  %104 = load i32, i32* @CTF_BOOL, align 4
  %105 = load i32, i32* @CTF_FP, align 4
  %106 = or i32 %104, %105
  %107 = and i32 %103, %106
  %108 = icmp ne i32 %107, 0
  br i1 %108, label %109, label %110

109:                                              ; preds = %96
  store i32 0, i32* %5, align 4
  br label %149

110:                                              ; preds = %96
  br label %147

111:                                              ; preds = %90
  %112 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %113 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %112, i32 0, i32 0
  %114 = load i32, i32* %113, align 8
  %115 = call i64 @ctype_ispointer(i32 %114)
  %116 = icmp ne i64 %115, 0
  br i1 %116, label %117, label %125

117:                                              ; preds = %111
  %118 = load i32*, i32** %6, align 8
  %119 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %120 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %121 = load i32, i32* %9, align 4
  %122 = load i32, i32* @CCF_SAME, align 4
  %123 = or i32 %121, %122
  %124 = call i32 @lj_cconv_compatptr(i32* %118, %struct.TYPE_6__* %119, %struct.TYPE_6__* %120, i32 %123)
  store i32 %124, i32* %5, align 4
  br label %149

125:                                              ; preds = %111
  %126 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %127 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %126, i32 0, i32 0
  %128 = load i32, i32* %127, align 8
  %129 = call i64 @ctype_isstruct(i32 %128)
  %130 = icmp ne i64 %129, 0
  br i1 %130, label %131, label %137

131:                                              ; preds = %125
  %132 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %133 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %134 = icmp ne %struct.TYPE_6__* %132, %133
  br i1 %134, label %135, label %136

135:                                              ; preds = %131
  store i32 0, i32* %5, align 4
  br label %149

136:                                              ; preds = %131
  br label %145

137:                                              ; preds = %125
  %138 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %139 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %138, i32 0, i32 0
  %140 = load i32, i32* %139, align 8
  %141 = call i64 @ctype_isfunc(i32 %140)
  %142 = icmp ne i64 %141, 0
  br i1 %142, label %143, label %144

143:                                              ; preds = %137
  br label %144

144:                                              ; preds = %143, %137
  br label %145

145:                                              ; preds = %144, %136
  br label %146

146:                                              ; preds = %145
  br label %147

147:                                              ; preds = %146, %110
  br label %148

148:                                              ; preds = %147, %16, %4
  store i32 1, i32* %5, align 4
  br label %149

149:                                              ; preds = %148, %135, %117, %109, %89, %68, %55, %42
  %150 = load i32, i32* %5, align 4
  ret i32 %150
}

declare dso_local %struct.TYPE_6__* @cconv_childqual(i32*, %struct.TYPE_6__*, i32*) #1

declare dso_local i64 @ctype_isstruct(i32) #1

declare dso_local i64 @ctype_isvoid(i32) #1

declare dso_local i64 @ctype_type(i32) #1

declare dso_local i64 @ctype_isnum(i32) #1

declare dso_local i64 @ctype_ispointer(i32) #1

declare dso_local i64 @ctype_isfunc(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
