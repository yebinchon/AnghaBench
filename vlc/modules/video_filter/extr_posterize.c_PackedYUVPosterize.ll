; ModuleID = '/home/carl/AnghaBench/vlc/modules/video_filter/extr_posterize.c_PackedYUVPosterize.c'
source_filename = "/home/carl/AnghaBench/vlc/modules/video_filter/extr_posterize.c_PackedYUVPosterize.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { %struct.TYPE_7__*, %struct.TYPE_6__ }
%struct.TYPE_7__ = type { i8**, i32, i32, i32 }
%struct.TYPE_6__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_8__*, %struct.TYPE_8__*, i32)* @PackedYUVPosterize to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @PackedYUVPosterize(%struct.TYPE_8__* %0, %struct.TYPE_8__* %1, i32 %2) #0 {
  %4 = alloca %struct.TYPE_8__*, align 8
  %5 = alloca %struct.TYPE_8__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8**, align 8
  %8 = alloca i8**, align 8
  %9 = alloca i8**, align 8
  %10 = alloca i8**, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i8*, align 8
  %16 = alloca i8*, align 8
  %17 = alloca i8*, align 8
  %18 = alloca i8*, align 8
  store %struct.TYPE_8__* %0, %struct.TYPE_8__** %4, align 8
  store %struct.TYPE_8__* %1, %struct.TYPE_8__** %5, align 8
  store i32 %2, i32* %6, align 4
  %19 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %20 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %19, i32 0, i32 0
  %21 = load %struct.TYPE_7__*, %struct.TYPE_7__** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %21, i64 0
  %23 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %22, i32 0, i32 0
  %24 = load i8**, i8*** %23, align 8
  store i8** %24, i8*** %7, align 8
  %25 = load i8**, i8*** %7, align 8
  %26 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %27 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %26, i32 0, i32 0
  %28 = load %struct.TYPE_7__*, %struct.TYPE_7__** %27, align 8
  %29 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %28, i64 0
  %30 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 8
  %32 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %33 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %32, i32 0, i32 0
  %34 = load %struct.TYPE_7__*, %struct.TYPE_7__** %33, align 8
  %35 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %34, i64 0
  %36 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %35, i32 0, i32 2
  %37 = load i32, i32* %36, align 4
  %38 = mul nsw i32 %31, %37
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds i8*, i8** %25, i64 %39
  store i8** %40, i8*** %8, align 8
  %41 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %42 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %41, i32 0, i32 0
  %43 = load %struct.TYPE_7__*, %struct.TYPE_7__** %42, align 8
  %44 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %43, i64 0
  %45 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %44, i32 0, i32 0
  %46 = load i8**, i8*** %45, align 8
  store i8** %46, i8*** %10, align 8
  br label %47

47:                                               ; preds = %190, %3
  %48 = load i8**, i8*** %7, align 8
  %49 = load i8**, i8*** %8, align 8
  %50 = icmp ult i8** %48, %49
  br i1 %50, label %51, label %223

51:                                               ; preds = %47
  %52 = load i8**, i8*** %7, align 8
  %53 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %54 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %53, i32 0, i32 0
  %55 = load %struct.TYPE_7__*, %struct.TYPE_7__** %54, align 8
  %56 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %55, i64 0
  %57 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %56, i32 0, i32 3
  %58 = load i32, i32* %57, align 8
  %59 = sext i32 %58 to i64
  %60 = getelementptr inbounds i8*, i8** %52, i64 %59
  store i8** %60, i8*** %9, align 8
  br label %61

61:                                               ; preds = %189, %51
  %62 = load i8**, i8*** %7, align 8
  %63 = load i8**, i8*** %9, align 8
  %64 = icmp ult i8** %62, %63
  br i1 %64, label %65, label %190

65:                                               ; preds = %61
  %66 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %67 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %66, i32 0, i32 1
  %68 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 8
  switch i32 %69, label %122 [
    i32 131, label %70
    i32 130, label %83
    i32 129, label %96
    i32 128, label %109
  ]

70:                                               ; preds = %65
  %71 = load i8**, i8*** %7, align 8
  %72 = getelementptr inbounds i8*, i8** %71, i32 1
  store i8** %72, i8*** %7, align 8
  %73 = load i8*, i8** %71, align 8
  store i8* %73, i8** %13, align 8
  %74 = load i8**, i8*** %7, align 8
  %75 = getelementptr inbounds i8*, i8** %74, i32 1
  store i8** %75, i8*** %7, align 8
  %76 = load i8*, i8** %74, align 8
  store i8* %76, i8** %11, align 8
  %77 = load i8**, i8*** %7, align 8
  %78 = getelementptr inbounds i8*, i8** %77, i32 1
  store i8** %78, i8*** %7, align 8
  %79 = load i8*, i8** %77, align 8
  store i8* %79, i8** %14, align 8
  %80 = load i8**, i8*** %7, align 8
  %81 = getelementptr inbounds i8*, i8** %80, i32 1
  store i8** %81, i8*** %7, align 8
  %82 = load i8*, i8** %80, align 8
  store i8* %82, i8** %12, align 8
  br label %124

83:                                               ; preds = %65
  %84 = load i8**, i8*** %7, align 8
  %85 = getelementptr inbounds i8*, i8** %84, i32 1
  store i8** %85, i8*** %7, align 8
  %86 = load i8*, i8** %84, align 8
  store i8* %86, i8** %14, align 8
  %87 = load i8**, i8*** %7, align 8
  %88 = getelementptr inbounds i8*, i8** %87, i32 1
  store i8** %88, i8*** %7, align 8
  %89 = load i8*, i8** %87, align 8
  store i8* %89, i8** %11, align 8
  %90 = load i8**, i8*** %7, align 8
  %91 = getelementptr inbounds i8*, i8** %90, i32 1
  store i8** %91, i8*** %7, align 8
  %92 = load i8*, i8** %90, align 8
  store i8* %92, i8** %13, align 8
  %93 = load i8**, i8*** %7, align 8
  %94 = getelementptr inbounds i8*, i8** %93, i32 1
  store i8** %94, i8*** %7, align 8
  %95 = load i8*, i8** %93, align 8
  store i8* %95, i8** %12, align 8
  br label %124

96:                                               ; preds = %65
  %97 = load i8**, i8*** %7, align 8
  %98 = getelementptr inbounds i8*, i8** %97, i32 1
  store i8** %98, i8*** %7, align 8
  %99 = load i8*, i8** %97, align 8
  store i8* %99, i8** %11, align 8
  %100 = load i8**, i8*** %7, align 8
  %101 = getelementptr inbounds i8*, i8** %100, i32 1
  store i8** %101, i8*** %7, align 8
  %102 = load i8*, i8** %100, align 8
  store i8* %102, i8** %13, align 8
  %103 = load i8**, i8*** %7, align 8
  %104 = getelementptr inbounds i8*, i8** %103, i32 1
  store i8** %104, i8*** %7, align 8
  %105 = load i8*, i8** %103, align 8
  store i8* %105, i8** %12, align 8
  %106 = load i8**, i8*** %7, align 8
  %107 = getelementptr inbounds i8*, i8** %106, i32 1
  store i8** %107, i8*** %7, align 8
  %108 = load i8*, i8** %106, align 8
  store i8* %108, i8** %14, align 8
  br label %124

109:                                              ; preds = %65
  %110 = load i8**, i8*** %7, align 8
  %111 = getelementptr inbounds i8*, i8** %110, i32 1
  store i8** %111, i8*** %7, align 8
  %112 = load i8*, i8** %110, align 8
  store i8* %112, i8** %11, align 8
  %113 = load i8**, i8*** %7, align 8
  %114 = getelementptr inbounds i8*, i8** %113, i32 1
  store i8** %114, i8*** %7, align 8
  %115 = load i8*, i8** %113, align 8
  store i8* %115, i8** %14, align 8
  %116 = load i8**, i8*** %7, align 8
  %117 = getelementptr inbounds i8*, i8** %116, i32 1
  store i8** %117, i8*** %7, align 8
  %118 = load i8*, i8** %116, align 8
  store i8* %118, i8** %12, align 8
  %119 = load i8**, i8*** %7, align 8
  %120 = getelementptr inbounds i8*, i8** %119, i32 1
  store i8** %120, i8*** %7, align 8
  %121 = load i8*, i8** %119, align 8
  store i8* %121, i8** %13, align 8
  br label %124

122:                                              ; preds = %65
  %123 = call i32 (...) @vlc_assert_unreachable()
  br label %124

124:                                              ; preds = %122, %109, %96, %83, %70
  %125 = load i8*, i8** %11, align 8
  %126 = load i8*, i8** %12, align 8
  %127 = load i8*, i8** %13, align 8
  %128 = load i8*, i8** %14, align 8
  %129 = load i32, i32* %6, align 4
  %130 = call i32 @YuvPosterization(i8** %15, i8** %16, i8** %17, i8** %18, i8* %125, i8* %126, i8* %127, i8* %128, i32 %129)
  %131 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %132 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %131, i32 0, i32 1
  %133 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %132, i32 0, i32 0
  %134 = load i32, i32* %133, align 8
  switch i32 %134, label %187 [
    i32 131, label %135
    i32 130, label %148
    i32 129, label %161
    i32 128, label %174
  ]

135:                                              ; preds = %124
  %136 = load i8*, i8** %17, align 8
  %137 = load i8**, i8*** %10, align 8
  %138 = getelementptr inbounds i8*, i8** %137, i32 1
  store i8** %138, i8*** %10, align 8
  store i8* %136, i8** %137, align 8
  %139 = load i8*, i8** %15, align 8
  %140 = load i8**, i8*** %10, align 8
  %141 = getelementptr inbounds i8*, i8** %140, i32 1
  store i8** %141, i8*** %10, align 8
  store i8* %139, i8** %140, align 8
  %142 = load i8*, i8** %18, align 8
  %143 = load i8**, i8*** %10, align 8
  %144 = getelementptr inbounds i8*, i8** %143, i32 1
  store i8** %144, i8*** %10, align 8
  store i8* %142, i8** %143, align 8
  %145 = load i8*, i8** %16, align 8
  %146 = load i8**, i8*** %10, align 8
  %147 = getelementptr inbounds i8*, i8** %146, i32 1
  store i8** %147, i8*** %10, align 8
  store i8* %145, i8** %146, align 8
  br label %189

148:                                              ; preds = %124
  %149 = load i8*, i8** %18, align 8
  %150 = load i8**, i8*** %10, align 8
  %151 = getelementptr inbounds i8*, i8** %150, i32 1
  store i8** %151, i8*** %10, align 8
  store i8* %149, i8** %150, align 8
  %152 = load i8*, i8** %15, align 8
  %153 = load i8**, i8*** %10, align 8
  %154 = getelementptr inbounds i8*, i8** %153, i32 1
  store i8** %154, i8*** %10, align 8
  store i8* %152, i8** %153, align 8
  %155 = load i8*, i8** %17, align 8
  %156 = load i8**, i8*** %10, align 8
  %157 = getelementptr inbounds i8*, i8** %156, i32 1
  store i8** %157, i8*** %10, align 8
  store i8* %155, i8** %156, align 8
  %158 = load i8*, i8** %16, align 8
  %159 = load i8**, i8*** %10, align 8
  %160 = getelementptr inbounds i8*, i8** %159, i32 1
  store i8** %160, i8*** %10, align 8
  store i8* %158, i8** %159, align 8
  br label %189

161:                                              ; preds = %124
  %162 = load i8*, i8** %15, align 8
  %163 = load i8**, i8*** %10, align 8
  %164 = getelementptr inbounds i8*, i8** %163, i32 1
  store i8** %164, i8*** %10, align 8
  store i8* %162, i8** %163, align 8
  %165 = load i8*, i8** %17, align 8
  %166 = load i8**, i8*** %10, align 8
  %167 = getelementptr inbounds i8*, i8** %166, i32 1
  store i8** %167, i8*** %10, align 8
  store i8* %165, i8** %166, align 8
  %168 = load i8*, i8** %16, align 8
  %169 = load i8**, i8*** %10, align 8
  %170 = getelementptr inbounds i8*, i8** %169, i32 1
  store i8** %170, i8*** %10, align 8
  store i8* %168, i8** %169, align 8
  %171 = load i8*, i8** %18, align 8
  %172 = load i8**, i8*** %10, align 8
  %173 = getelementptr inbounds i8*, i8** %172, i32 1
  store i8** %173, i8*** %10, align 8
  store i8* %171, i8** %172, align 8
  br label %189

174:                                              ; preds = %124
  %175 = load i8*, i8** %15, align 8
  %176 = load i8**, i8*** %10, align 8
  %177 = getelementptr inbounds i8*, i8** %176, i32 1
  store i8** %177, i8*** %10, align 8
  store i8* %175, i8** %176, align 8
  %178 = load i8*, i8** %18, align 8
  %179 = load i8**, i8*** %10, align 8
  %180 = getelementptr inbounds i8*, i8** %179, i32 1
  store i8** %180, i8*** %10, align 8
  store i8* %178, i8** %179, align 8
  %181 = load i8*, i8** %16, align 8
  %182 = load i8**, i8*** %10, align 8
  %183 = getelementptr inbounds i8*, i8** %182, i32 1
  store i8** %183, i8*** %10, align 8
  store i8* %181, i8** %182, align 8
  %184 = load i8*, i8** %17, align 8
  %185 = load i8**, i8*** %10, align 8
  %186 = getelementptr inbounds i8*, i8** %185, i32 1
  store i8** %186, i8*** %10, align 8
  store i8* %184, i8** %185, align 8
  br label %189

187:                                              ; preds = %124
  %188 = call i32 (...) @vlc_assert_unreachable()
  br label %189

189:                                              ; preds = %187, %174, %161, %148, %135
  br label %61

190:                                              ; preds = %61
  %191 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %192 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %191, i32 0, i32 0
  %193 = load %struct.TYPE_7__*, %struct.TYPE_7__** %192, align 8
  %194 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %193, i64 0
  %195 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %194, i32 0, i32 2
  %196 = load i32, i32* %195, align 4
  %197 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %198 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %197, i32 0, i32 0
  %199 = load %struct.TYPE_7__*, %struct.TYPE_7__** %198, align 8
  %200 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %199, i64 0
  %201 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %200, i32 0, i32 3
  %202 = load i32, i32* %201, align 8
  %203 = sub nsw i32 %196, %202
  %204 = load i8**, i8*** %7, align 8
  %205 = sext i32 %203 to i64
  %206 = getelementptr inbounds i8*, i8** %204, i64 %205
  store i8** %206, i8*** %7, align 8
  %207 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %208 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %207, i32 0, i32 0
  %209 = load %struct.TYPE_7__*, %struct.TYPE_7__** %208, align 8
  %210 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %209, i64 0
  %211 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %210, i32 0, i32 2
  %212 = load i32, i32* %211, align 4
  %213 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %214 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %213, i32 0, i32 0
  %215 = load %struct.TYPE_7__*, %struct.TYPE_7__** %214, align 8
  %216 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %215, i64 0
  %217 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %216, i32 0, i32 3
  %218 = load i32, i32* %217, align 8
  %219 = sub nsw i32 %212, %218
  %220 = load i8**, i8*** %10, align 8
  %221 = sext i32 %219 to i64
  %222 = getelementptr inbounds i8*, i8** %220, i64 %221
  store i8** %222, i8*** %10, align 8
  br label %47

223:                                              ; preds = %47
  ret void
}

declare dso_local i32 @vlc_assert_unreachable(...) #1

declare dso_local i32 @YuvPosterization(i8**, i8**, i8**, i8**, i8*, i8*, i8*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
