; ModuleID = '/home/carl/AnghaBench/reactos/sdk/lib/3rdparty/libwin-iconv/extr_win_iconv.c_utf16_mbtowc.c'
source_filename = "/home/carl/AnghaBench/reactos/sdk/lib/3rdparty/libwin-iconv/extr_win_iconv.c_utf16_mbtowc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32, i32 }

@UNICODE_MODE_SWAPPED = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@FLAG_USE_BOM = common dso_local global i32 0, align 4
@UNICODE_MODE_BOM_DONE = common dso_local global i32 0, align 4
@EILSEQ = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_3__*, i32*, i32, i32*, i32*)* @utf16_mbtowc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @utf16_mbtowc(%struct.TYPE_3__* %0, i32* %1, i32 %2, i32* %3, i32* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_3__*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %7, align 8
  store i32* %1, i32** %8, align 8
  store i32 %2, i32* %9, align 4
  store i32* %3, i32** %10, align 8
  store i32* %4, i32** %11, align 8
  %13 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %14 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  store i32 %15, i32* %12, align 4
  %16 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %17 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 4
  %19 = load i32, i32* @UNICODE_MODE_SWAPPED, align 4
  %20 = and i32 %18, %19
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %25

22:                                               ; preds = %5
  %23 = load i32, i32* %12, align 4
  %24 = xor i32 %23, 1
  store i32 %24, i32* %12, align 4
  br label %25

25:                                               ; preds = %22, %5
  %26 = load i32, i32* %9, align 4
  %27 = icmp slt i32 %26, 2
  br i1 %27, label %28, label %31

28:                                               ; preds = %25
  %29 = load i32, i32* @EINVAL, align 4
  %30 = call i32 @seterror(i32 %29)
  store i32 %30, i32* %6, align 4
  br label %175

31:                                               ; preds = %25
  %32 = load i32, i32* %12, align 4
  %33 = icmp eq i32 %32, 1200
  br i1 %33, label %34, label %45

34:                                               ; preds = %31
  %35 = load i32*, i32** %8, align 8
  %36 = getelementptr inbounds i32, i32* %35, i64 1
  %37 = load i32, i32* %36, align 4
  %38 = shl i32 %37, 8
  %39 = load i32*, i32** %8, align 8
  %40 = getelementptr inbounds i32, i32* %39, i64 0
  %41 = load i32, i32* %40, align 4
  %42 = or i32 %38, %41
  %43 = load i32*, i32** %10, align 8
  %44 = getelementptr inbounds i32, i32* %43, i64 0
  store i32 %42, i32* %44, align 4
  br label %60

45:                                               ; preds = %31
  %46 = load i32, i32* %12, align 4
  %47 = icmp eq i32 %46, 1201
  br i1 %47, label %48, label %59

48:                                               ; preds = %45
  %49 = load i32*, i32** %8, align 8
  %50 = getelementptr inbounds i32, i32* %49, i64 0
  %51 = load i32, i32* %50, align 4
  %52 = shl i32 %51, 8
  %53 = load i32*, i32** %8, align 8
  %54 = getelementptr inbounds i32, i32* %53, i64 1
  %55 = load i32, i32* %54, align 4
  %56 = or i32 %52, %55
  %57 = load i32*, i32** %10, align 8
  %58 = getelementptr inbounds i32, i32* %57, i64 0
  store i32 %56, i32* %58, align 4
  br label %59

59:                                               ; preds = %48, %45
  br label %60

60:                                               ; preds = %59, %34
  %61 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %62 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %61, i32 0, i32 2
  %63 = load i32, i32* %62, align 4
  %64 = load i32, i32* @FLAG_USE_BOM, align 4
  %65 = and i32 %63, %64
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %67, label %100

67:                                               ; preds = %60
  %68 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %69 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %68, i32 0, i32 1
  %70 = load i32, i32* %69, align 4
  %71 = load i32, i32* @UNICODE_MODE_BOM_DONE, align 4
  %72 = and i32 %70, %71
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %100, label %74

74:                                               ; preds = %67
  %75 = load i32, i32* @UNICODE_MODE_BOM_DONE, align 4
  %76 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %77 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %76, i32 0, i32 1
  %78 = load i32, i32* %77, align 4
  %79 = or i32 %78, %75
  store i32 %79, i32* %77, align 4
  %80 = load i32*, i32** %10, align 8
  %81 = getelementptr inbounds i32, i32* %80, i64 0
  %82 = load i32, i32* %81, align 4
  %83 = icmp eq i32 %82, 65534
  br i1 %83, label %84, label %91

84:                                               ; preds = %74
  %85 = load i32, i32* @UNICODE_MODE_SWAPPED, align 4
  %86 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %87 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %86, i32 0, i32 1
  %88 = load i32, i32* %87, align 4
  %89 = or i32 %88, %85
  store i32 %89, i32* %87, align 4
  %90 = load i32*, i32** %11, align 8
  store i32 0, i32* %90, align 4
  store i32 2, i32* %6, align 4
  br label %175

91:                                               ; preds = %74
  %92 = load i32*, i32** %10, align 8
  %93 = getelementptr inbounds i32, i32* %92, i64 0
  %94 = load i32, i32* %93, align 4
  %95 = icmp eq i32 %94, 65279
  br i1 %95, label %96, label %98

96:                                               ; preds = %91
  %97 = load i32*, i32** %11, align 8
  store i32 0, i32* %97, align 4
  store i32 2, i32* %6, align 4
  br label %175

98:                                               ; preds = %91
  br label %99

99:                                               ; preds = %98
  br label %100

100:                                              ; preds = %99, %67, %60
  %101 = load i32*, i32** %10, align 8
  %102 = getelementptr inbounds i32, i32* %101, i64 0
  %103 = load i32, i32* %102, align 4
  %104 = icmp sle i32 56320, %103
  br i1 %104, label %105, label %113

105:                                              ; preds = %100
  %106 = load i32*, i32** %10, align 8
  %107 = getelementptr inbounds i32, i32* %106, i64 0
  %108 = load i32, i32* %107, align 4
  %109 = icmp sle i32 %108, 57343
  br i1 %109, label %110, label %113

110:                                              ; preds = %105
  %111 = load i32, i32* @EILSEQ, align 4
  %112 = call i32 @seterror(i32 %111)
  store i32 %112, i32* %6, align 4
  br label %175

113:                                              ; preds = %105, %100
  %114 = load i32*, i32** %10, align 8
  %115 = getelementptr inbounds i32, i32* %114, i64 0
  %116 = load i32, i32* %115, align 4
  %117 = icmp sle i32 55296, %116
  br i1 %117, label %118, label %173

118:                                              ; preds = %113
  %119 = load i32*, i32** %10, align 8
  %120 = getelementptr inbounds i32, i32* %119, i64 0
  %121 = load i32, i32* %120, align 4
  %122 = icmp sle i32 %121, 56319
  br i1 %122, label %123, label %173

123:                                              ; preds = %118
  %124 = load i32, i32* %9, align 4
  %125 = icmp slt i32 %124, 4
  br i1 %125, label %126, label %129

126:                                              ; preds = %123
  %127 = load i32, i32* @EINVAL, align 4
  %128 = call i32 @seterror(i32 %127)
  store i32 %128, i32* %6, align 4
  br label %175

129:                                              ; preds = %123
  %130 = load i32, i32* %12, align 4
  %131 = icmp eq i32 %130, 1200
  br i1 %131, label %132, label %143

132:                                              ; preds = %129
  %133 = load i32*, i32** %8, align 8
  %134 = getelementptr inbounds i32, i32* %133, i64 3
  %135 = load i32, i32* %134, align 4
  %136 = shl i32 %135, 8
  %137 = load i32*, i32** %8, align 8
  %138 = getelementptr inbounds i32, i32* %137, i64 2
  %139 = load i32, i32* %138, align 4
  %140 = or i32 %136, %139
  %141 = load i32*, i32** %10, align 8
  %142 = getelementptr inbounds i32, i32* %141, i64 1
  store i32 %140, i32* %142, align 4
  br label %158

143:                                              ; preds = %129
  %144 = load i32, i32* %12, align 4
  %145 = icmp eq i32 %144, 1201
  br i1 %145, label %146, label %157

146:                                              ; preds = %143
  %147 = load i32*, i32** %8, align 8
  %148 = getelementptr inbounds i32, i32* %147, i64 2
  %149 = load i32, i32* %148, align 4
  %150 = shl i32 %149, 8
  %151 = load i32*, i32** %8, align 8
  %152 = getelementptr inbounds i32, i32* %151, i64 3
  %153 = load i32, i32* %152, align 4
  %154 = or i32 %150, %153
  %155 = load i32*, i32** %10, align 8
  %156 = getelementptr inbounds i32, i32* %155, i64 1
  store i32 %154, i32* %156, align 4
  br label %157

157:                                              ; preds = %146, %143
  br label %158

158:                                              ; preds = %157, %132
  %159 = load i32*, i32** %10, align 8
  %160 = getelementptr inbounds i32, i32* %159, i64 1
  %161 = load i32, i32* %160, align 4
  %162 = icmp sle i32 56320, %161
  br i1 %162, label %163, label %168

163:                                              ; preds = %158
  %164 = load i32*, i32** %10, align 8
  %165 = getelementptr inbounds i32, i32* %164, i64 1
  %166 = load i32, i32* %165, align 4
  %167 = icmp sle i32 %166, 57343
  br i1 %167, label %171, label %168

168:                                              ; preds = %163, %158
  %169 = load i32, i32* @EILSEQ, align 4
  %170 = call i32 @seterror(i32 %169)
  store i32 %170, i32* %6, align 4
  br label %175

171:                                              ; preds = %163
  %172 = load i32*, i32** %11, align 8
  store i32 2, i32* %172, align 4
  store i32 4, i32* %6, align 4
  br label %175

173:                                              ; preds = %118, %113
  %174 = load i32*, i32** %11, align 8
  store i32 1, i32* %174, align 4
  store i32 2, i32* %6, align 4
  br label %175

175:                                              ; preds = %173, %171, %168, %126, %110, %96, %84, %28
  %176 = load i32, i32* %6, align 4
  ret i32 %176
}

declare dso_local i32 @seterror(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
