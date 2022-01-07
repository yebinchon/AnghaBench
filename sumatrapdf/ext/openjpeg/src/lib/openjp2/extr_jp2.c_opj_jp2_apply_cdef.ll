; ModuleID = '/home/carl/AnghaBench/sumatrapdf/ext/openjpeg/src/lib/openjp2/extr_jp2.c_opj_jp2_apply_cdef.c'
source_filename = "/home/carl/AnghaBench/sumatrapdf/ext/openjpeg/src/lib/openjp2/extr_jp2.c_opj_jp2_apply_cdef.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { i64, %struct.TYPE_13__* }
%struct.TYPE_13__ = type { i64 }
%struct.TYPE_10__ = type { %struct.TYPE_11__* }
%struct.TYPE_11__ = type { i64, i64, i64, i64, %struct.TYPE_11__* }

@EVT_WARNING = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [40 x i8] c"opj_jp2_apply_cdef: cn=%d, numcomps=%d\0A\00", align 1
@.str.1 = private unnamed_addr constant [41 x i8] c"opj_jp2_apply_cdef: acn=%d, numcomps=%d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_12__*, %struct.TYPE_10__*, i32*)* @opj_jp2_apply_cdef to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @opj_jp2_apply_cdef(%struct.TYPE_12__* %0, %struct.TYPE_10__* %1, i32* %2) #0 {
  %4 = alloca %struct.TYPE_12__*, align 8
  %5 = alloca %struct.TYPE_10__*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca %struct.TYPE_11__*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca %struct.TYPE_13__, align 8
  %14 = alloca i64, align 8
  store %struct.TYPE_12__* %0, %struct.TYPE_12__** %4, align 8
  store %struct.TYPE_10__* %1, %struct.TYPE_10__** %5, align 8
  store i32* %2, i32** %6, align 8
  %15 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %16 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %15, i32 0, i32 0
  %17 = load %struct.TYPE_11__*, %struct.TYPE_11__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %17, i32 0, i32 4
  %19 = load %struct.TYPE_11__*, %struct.TYPE_11__** %18, align 8
  store %struct.TYPE_11__* %19, %struct.TYPE_11__** %7, align 8
  %20 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %21 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %20, i32 0, i32 0
  %22 = load %struct.TYPE_11__*, %struct.TYPE_11__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  store i64 %24, i64* %9, align 8
  store i64 0, i64* %8, align 8
  br label %25

25:                                               ; preds = %174, %3
  %26 = load i64, i64* %8, align 8
  %27 = load i64, i64* %9, align 8
  %28 = icmp ult i64 %26, %27
  br i1 %28, label %29, label %177

29:                                               ; preds = %25
  %30 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %31 = load i64, i64* %8, align 8
  %32 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %30, i64 %31
  %33 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %32, i32 0, i32 1
  %34 = load i64, i64* %33, align 8
  store i64 %34, i64* %11, align 8
  %35 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %36 = load i64, i64* %8, align 8
  %37 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %35, i64 %36
  %38 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %37, i32 0, i32 2
  %39 = load i64, i64* %38, align 8
  store i64 %39, i64* %10, align 8
  %40 = load i64, i64* %10, align 8
  %41 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %42 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %41, i32 0, i32 0
  %43 = load i64, i64* %42, align 8
  %44 = icmp uge i64 %40, %43
  br i1 %44, label %45, label %53

45:                                               ; preds = %29
  %46 = load i32*, i32** %6, align 8
  %47 = load i32, i32* @EVT_WARNING, align 4
  %48 = load i64, i64* %10, align 8
  %49 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %50 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %49, i32 0, i32 0
  %51 = load i64, i64* %50, align 8
  %52 = call i32 @opj_event_msg(i32* %46, i32 %47, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str, i64 0, i64 0), i64 %48, i64 %51)
  br label %174

53:                                               ; preds = %29
  %54 = load i64, i64* %11, align 8
  %55 = icmp eq i64 %54, 0
  br i1 %55, label %59, label %56

56:                                               ; preds = %53
  %57 = load i64, i64* %11, align 8
  %58 = icmp eq i64 %57, 65535
  br i1 %58, label %59, label %71

59:                                               ; preds = %56, %53
  %60 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %61 = load i64, i64* %8, align 8
  %62 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %60, i64 %61
  %63 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %62, i32 0, i32 3
  %64 = load i64, i64* %63, align 8
  %65 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %66 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %65, i32 0, i32 1
  %67 = load %struct.TYPE_13__*, %struct.TYPE_13__** %66, align 8
  %68 = load i64, i64* %10, align 8
  %69 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %67, i64 %68
  %70 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %69, i32 0, i32 0
  store i64 %64, i64* %70, align 8
  br label %174

71:                                               ; preds = %56
  %72 = load i64, i64* %11, align 8
  %73 = sub i64 %72, 1
  store i64 %73, i64* %12, align 8
  %74 = load i64, i64* %12, align 8
  %75 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %76 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %75, i32 0, i32 0
  %77 = load i64, i64* %76, align 8
  %78 = icmp uge i64 %74, %77
  br i1 %78, label %79, label %87

79:                                               ; preds = %71
  %80 = load i32*, i32** %6, align 8
  %81 = load i32, i32* @EVT_WARNING, align 4
  %82 = load i64, i64* %12, align 8
  %83 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %84 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %83, i32 0, i32 0
  %85 = load i64, i64* %84, align 8
  %86 = call i32 @opj_event_msg(i32* %80, i32 %81, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.1, i64 0, i64 0), i64 %82, i64 %85)
  br label %174

87:                                               ; preds = %71
  %88 = load i64, i64* %10, align 8
  %89 = load i64, i64* %12, align 8
  %90 = icmp ne i64 %88, %89
  br i1 %90, label %91, label %162

91:                                               ; preds = %87
  %92 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %93 = load i64, i64* %8, align 8
  %94 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %92, i64 %93
  %95 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %94, i32 0, i32 3
  %96 = load i64, i64* %95, align 8
  %97 = icmp eq i64 %96, 0
  br i1 %97, label %98, label %162

98:                                               ; preds = %91
  %99 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %100 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %99, i32 0, i32 1
  %101 = load %struct.TYPE_13__*, %struct.TYPE_13__** %100, align 8
  %102 = load i64, i64* %10, align 8
  %103 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %101, i64 %102
  %104 = call i32 @memcpy(%struct.TYPE_13__* %13, %struct.TYPE_13__* %103, i32 8)
  %105 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %106 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %105, i32 0, i32 1
  %107 = load %struct.TYPE_13__*, %struct.TYPE_13__** %106, align 8
  %108 = load i64, i64* %10, align 8
  %109 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %107, i64 %108
  %110 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %111 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %110, i32 0, i32 1
  %112 = load %struct.TYPE_13__*, %struct.TYPE_13__** %111, align 8
  %113 = load i64, i64* %12, align 8
  %114 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %112, i64 %113
  %115 = call i32 @memcpy(%struct.TYPE_13__* %109, %struct.TYPE_13__* %114, i32 8)
  %116 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %117 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %116, i32 0, i32 1
  %118 = load %struct.TYPE_13__*, %struct.TYPE_13__** %117, align 8
  %119 = load i64, i64* %12, align 8
  %120 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %118, i64 %119
  %121 = call i32 @memcpy(%struct.TYPE_13__* %120, %struct.TYPE_13__* %13, i32 8)
  %122 = load i64, i64* %8, align 8
  %123 = add i64 %122, 1
  store i64 %123, i64* %14, align 8
  br label %124

124:                                              ; preds = %158, %98
  %125 = load i64, i64* %14, align 8
  %126 = load i64, i64* %9, align 8
  %127 = icmp ult i64 %125, %126
  br i1 %127, label %128, label %161

128:                                              ; preds = %124
  %129 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %130 = load i64, i64* %14, align 8
  %131 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %129, i64 %130
  %132 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %131, i32 0, i32 2
  %133 = load i64, i64* %132, align 8
  %134 = load i64, i64* %10, align 8
  %135 = icmp eq i64 %133, %134
  br i1 %135, label %136, label %142

136:                                              ; preds = %128
  %137 = load i64, i64* %12, align 8
  %138 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %139 = load i64, i64* %14, align 8
  %140 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %138, i64 %139
  %141 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %140, i32 0, i32 2
  store i64 %137, i64* %141, align 8
  br label %157

142:                                              ; preds = %128
  %143 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %144 = load i64, i64* %14, align 8
  %145 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %143, i64 %144
  %146 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %145, i32 0, i32 2
  %147 = load i64, i64* %146, align 8
  %148 = load i64, i64* %12, align 8
  %149 = icmp eq i64 %147, %148
  br i1 %149, label %150, label %156

150:                                              ; preds = %142
  %151 = load i64, i64* %10, align 8
  %152 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %153 = load i64, i64* %14, align 8
  %154 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %152, i64 %153
  %155 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %154, i32 0, i32 2
  store i64 %151, i64* %155, align 8
  br label %156

156:                                              ; preds = %150, %142
  br label %157

157:                                              ; preds = %156, %136
  br label %158

158:                                              ; preds = %157
  %159 = load i64, i64* %14, align 8
  %160 = add i64 %159, 1
  store i64 %160, i64* %14, align 8
  br label %124

161:                                              ; preds = %124
  br label %162

162:                                              ; preds = %161, %91, %87
  %163 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %164 = load i64, i64* %8, align 8
  %165 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %163, i64 %164
  %166 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %165, i32 0, i32 3
  %167 = load i64, i64* %166, align 8
  %168 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %169 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %168, i32 0, i32 1
  %170 = load %struct.TYPE_13__*, %struct.TYPE_13__** %169, align 8
  %171 = load i64, i64* %10, align 8
  %172 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %170, i64 %171
  %173 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %172, i32 0, i32 0
  store i64 %167, i64* %173, align 8
  br label %174

174:                                              ; preds = %162, %79, %59, %45
  %175 = load i64, i64* %8, align 8
  %176 = add i64 %175, 1
  store i64 %176, i64* %8, align 8
  br label %25

177:                                              ; preds = %25
  %178 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %179 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %178, i32 0, i32 0
  %180 = load %struct.TYPE_11__*, %struct.TYPE_11__** %179, align 8
  %181 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %180, i32 0, i32 4
  %182 = load %struct.TYPE_11__*, %struct.TYPE_11__** %181, align 8
  %183 = icmp ne %struct.TYPE_11__* %182, null
  br i1 %183, label %184, label %191

184:                                              ; preds = %177
  %185 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %186 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %185, i32 0, i32 0
  %187 = load %struct.TYPE_11__*, %struct.TYPE_11__** %186, align 8
  %188 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %187, i32 0, i32 4
  %189 = load %struct.TYPE_11__*, %struct.TYPE_11__** %188, align 8
  %190 = call i32 @opj_free(%struct.TYPE_11__* %189)
  br label %191

191:                                              ; preds = %184, %177
  %192 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %193 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %192, i32 0, i32 0
  %194 = load %struct.TYPE_11__*, %struct.TYPE_11__** %193, align 8
  %195 = call i32 @opj_free(%struct.TYPE_11__* %194)
  %196 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %197 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %196, i32 0, i32 0
  store %struct.TYPE_11__* null, %struct.TYPE_11__** %197, align 8
  ret void
}

declare dso_local i32 @opj_event_msg(i32*, i32, i8*, i64, i64) #1

declare dso_local i32 @memcpy(%struct.TYPE_13__*, %struct.TYPE_13__*, i32) #1

declare dso_local i32 @opj_free(%struct.TYPE_11__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
