; ModuleID = '/home/carl/AnghaBench/stb/tools/extr_..stb.h_stb_ps_remove_any.c'
source_filename = "/home/carl/AnghaBench/stb/tools/extr_..stb.h_stb_ps_remove_any.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i8** }
%struct.TYPE_10__ = type { i32, i8** }
%struct.TYPE_8__ = type { i8**, i64, i64, i32, i32, i32 }

@STB_BUCKET_SIZE = common dso_local global i32 0, align 4
@stb_ps_array_max = common dso_local global i32 0, align 4
@STB_DEL = common dso_local global i8* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @stb_ps_remove_any(i32* %0, i8** %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i8**, align 8
  %6 = alloca %struct.TYPE_9__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca %struct.TYPE_10__*, align 8
  %12 = alloca %struct.TYPE_8__*, align 8
  %13 = alloca i8**, align 8
  %14 = alloca i64, align 8
  store i32* %0, i32** %4, align 8
  store i8** %1, i8*** %5, align 8
  %15 = load i32*, i32** %4, align 8
  %16 = icmp ne i32* %15, null
  %17 = zext i1 %16 to i32
  %18 = call i32 @assert(i32 %17)
  %19 = load i32*, i32** %4, align 8
  %20 = ptrtoint i32* %19 to i64
  %21 = trunc i64 %20 to i32
  %22 = and i32 3, %21
  switch i32 %22, label %208 [
    i32 129, label %23
    i32 130, label %27
    i32 131, label %107
    i32 128, label %136
  ]

23:                                               ; preds = %2
  %24 = load i32*, i32** %4, align 8
  %25 = bitcast i32* %24 to i8*
  %26 = load i8**, i8*** %5, align 8
  store i8* %25, i8** %26, align 8
  store i32* null, i32** %3, align 8
  br label %210

27:                                               ; preds = %2
  %28 = load i32*, i32** %4, align 8
  %29 = call %struct.TYPE_9__* @GetBucket(i32* %28)
  store %struct.TYPE_9__* %29, %struct.TYPE_9__** %6, align 8
  store i32 0, i32* %7, align 4
  store i32 0, i32* %8, align 4
  store i32 0, i32* %9, align 4
  %30 = load i32, i32* @STB_BUCKET_SIZE, align 4
  %31 = icmp eq i32 %30, 4
  %32 = zext i1 %31 to i32
  %33 = call i32 @assert(i32 %32)
  %34 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %35 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %34, i32 0, i32 0
  %36 = load i8**, i8*** %35, align 8
  %37 = getelementptr inbounds i8*, i8** %36, i64 0
  %38 = load i8*, i8** %37, align 8
  %39 = icmp ne i8* %38, null
  br i1 %39, label %40, label %43

40:                                               ; preds = %27
  %41 = load i32, i32* %7, align 4
  %42 = add nsw i32 %41, 1
  store i32 %42, i32* %7, align 4
  store i32 0, i32* %9, align 4
  br label %43

43:                                               ; preds = %40, %27
  %44 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %45 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %44, i32 0, i32 0
  %46 = load i8**, i8*** %45, align 8
  %47 = getelementptr inbounds i8*, i8** %46, i64 1
  %48 = load i8*, i8** %47, align 8
  %49 = icmp ne i8* %48, null
  br i1 %49, label %50, label %54

50:                                               ; preds = %43
  %51 = load i32, i32* %7, align 4
  %52 = add nsw i32 %51, 1
  store i32 %52, i32* %7, align 4
  %53 = load i32, i32* %9, align 4
  store i32 %53, i32* %8, align 4
  store i32 1, i32* %9, align 4
  br label %54

54:                                               ; preds = %50, %43
  %55 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %56 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %55, i32 0, i32 0
  %57 = load i8**, i8*** %56, align 8
  %58 = getelementptr inbounds i8*, i8** %57, i64 2
  %59 = load i8*, i8** %58, align 8
  %60 = icmp ne i8* %59, null
  br i1 %60, label %61, label %65

61:                                               ; preds = %54
  %62 = load i32, i32* %7, align 4
  %63 = add nsw i32 %62, 1
  store i32 %63, i32* %7, align 4
  %64 = load i32, i32* %9, align 4
  store i32 %64, i32* %8, align 4
  store i32 2, i32* %9, align 4
  br label %65

65:                                               ; preds = %61, %54
  %66 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %67 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %66, i32 0, i32 0
  %68 = load i8**, i8*** %67, align 8
  %69 = getelementptr inbounds i8*, i8** %68, i64 3
  %70 = load i8*, i8** %69, align 8
  %71 = icmp ne i8* %70, null
  br i1 %71, label %72, label %76

72:                                               ; preds = %65
  %73 = load i32, i32* %7, align 4
  %74 = add nsw i32 %73, 1
  store i32 %74, i32* %7, align 4
  %75 = load i32, i32* %9, align 4
  store i32 %75, i32* %8, align 4
  store i32 3, i32* %9, align 4
  br label %76

76:                                               ; preds = %72, %65
  %77 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %78 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %77, i32 0, i32 0
  %79 = load i8**, i8*** %78, align 8
  %80 = load i32, i32* %9, align 4
  %81 = sext i32 %80 to i64
  %82 = getelementptr inbounds i8*, i8** %79, i64 %81
  %83 = load i8*, i8** %82, align 8
  %84 = load i8**, i8*** %5, align 8
  store i8* %83, i8** %84, align 8
  %85 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %86 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %85, i32 0, i32 0
  %87 = load i8**, i8*** %86, align 8
  %88 = load i32, i32* %9, align 4
  %89 = sext i32 %88 to i64
  %90 = getelementptr inbounds i8*, i8** %87, i64 %89
  store i8* null, i8** %90, align 8
  %91 = load i32, i32* %7, align 4
  %92 = icmp eq i32 %91, 2
  br i1 %92, label %93, label %105

93:                                               ; preds = %76
  %94 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %95 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %94, i32 0, i32 0
  %96 = load i8**, i8*** %95, align 8
  %97 = load i32, i32* %8, align 4
  %98 = sext i32 %97 to i64
  %99 = getelementptr inbounds i8*, i8** %96, i64 %98
  %100 = load i8*, i8** %99, align 8
  store i8* %100, i8** %10, align 8
  %101 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %102 = call i32 @stb_bucket_free(%struct.TYPE_9__* %101)
  %103 = load i8*, i8** %10, align 8
  %104 = bitcast i8* %103 to i32*
  store i32* %104, i32** %3, align 8
  br label %210

105:                                              ; preds = %76
  %106 = load i32*, i32** %4, align 8
  store i32* %106, i32** %3, align 8
  br label %210

107:                                              ; preds = %2
  %108 = load i32*, i32** %4, align 8
  %109 = call %struct.TYPE_10__* @GetArray(i32* %108)
  store %struct.TYPE_10__* %109, %struct.TYPE_10__** %11, align 8
  %110 = load %struct.TYPE_10__*, %struct.TYPE_10__** %11, align 8
  %111 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %110, i32 0, i32 1
  %112 = load i8**, i8*** %111, align 8
  %113 = load %struct.TYPE_10__*, %struct.TYPE_10__** %11, align 8
  %114 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %113, i32 0, i32 0
  %115 = load i32, i32* %114, align 8
  %116 = sub nsw i32 %115, 1
  %117 = sext i32 %116 to i64
  %118 = getelementptr inbounds i8*, i8** %112, i64 %117
  %119 = load i8*, i8** %118, align 8
  %120 = load i8**, i8*** %5, align 8
  store i8* %119, i8** %120, align 8
  %121 = load %struct.TYPE_10__*, %struct.TYPE_10__** %11, align 8
  %122 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %121, i32 0, i32 0
  %123 = load i32, i32* %122, align 8
  %124 = icmp eq i32 %123, 4
  br i1 %124, label %125, label %130

125:                                              ; preds = %107
  %126 = load i32*, i32** %4, align 8
  %127 = load i8**, i8*** %5, align 8
  %128 = load i8*, i8** %127, align 8
  %129 = call i32* @stb_ps_remove(i32* %126, i8* %128)
  store i32* %129, i32** %3, align 8
  br label %210

130:                                              ; preds = %107
  %131 = load %struct.TYPE_10__*, %struct.TYPE_10__** %11, align 8
  %132 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %131, i32 0, i32 0
  %133 = load i32, i32* %132, align 8
  %134 = add nsw i32 %133, -1
  store i32 %134, i32* %132, align 8
  %135 = load i32*, i32** %4, align 8
  store i32* %135, i32** %3, align 8
  br label %210

136:                                              ; preds = %2
  %137 = load i32*, i32** %4, align 8
  %138 = call %struct.TYPE_8__* @GetHash(i32* %137)
  store %struct.TYPE_8__* %138, %struct.TYPE_8__** %12, align 8
  %139 = load %struct.TYPE_8__*, %struct.TYPE_8__** %12, align 8
  %140 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %139, i32 0, i32 0
  %141 = load i8**, i8*** %140, align 8
  store i8** %141, i8*** %13, align 8
  %142 = load %struct.TYPE_8__*, %struct.TYPE_8__** %12, align 8
  %143 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %142, i32 0, i32 1
  %144 = load i64, i64* %143, align 8
  store i64 %144, i64* %14, align 8
  br label %145

145:                                              ; preds = %153, %136
  %146 = load i8**, i8*** %13, align 8
  %147 = load i64, i64* %14, align 8
  %148 = getelementptr inbounds i8*, i8** %146, i64 %147
  %149 = load i8*, i8** %148, align 8
  %150 = ptrtoint i8* %149 to i64
  %151 = call i32 @stb_ps_empty(i64 %150)
  %152 = icmp ne i32 %151, 0
  br i1 %152, label %153, label %160

153:                                              ; preds = %145
  %154 = load i64, i64* %14, align 8
  %155 = add i64 %154, 1
  %156 = load %struct.TYPE_8__*, %struct.TYPE_8__** %12, align 8
  %157 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %156, i32 0, i32 2
  %158 = load i64, i64* %157, align 8
  %159 = and i64 %155, %158
  store i64 %159, i64* %14, align 8
  br label %145

160:                                              ; preds = %145
  %161 = load i8**, i8*** %13, align 8
  %162 = load i64, i64* %14, align 8
  %163 = getelementptr inbounds i8*, i8** %161, i64 %162
  %164 = load i8*, i8** %163, align 8
  %165 = load i8**, i8*** %5, align 8
  store i8* %164, i8** %165, align 8
  %166 = load i64, i64* %14, align 8
  %167 = add i64 %166, 1
  %168 = load %struct.TYPE_8__*, %struct.TYPE_8__** %12, align 8
  %169 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %168, i32 0, i32 2
  %170 = load i64, i64* %169, align 8
  %171 = and i64 %167, %170
  %172 = load %struct.TYPE_8__*, %struct.TYPE_8__** %12, align 8
  %173 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %172, i32 0, i32 1
  store i64 %171, i64* %173, align 8
  %174 = load %struct.TYPE_8__*, %struct.TYPE_8__** %12, align 8
  %175 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %174, i32 0, i32 4
  %176 = load i32, i32* %175, align 4
  %177 = sub nsw i32 %176, 1
  %178 = load i32, i32* @stb_ps_array_max, align 4
  %179 = icmp slt i32 %177, %178
  br i1 %179, label %189, label %180

180:                                              ; preds = %160
  %181 = load %struct.TYPE_8__*, %struct.TYPE_8__** %12, align 8
  %182 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %181, i32 0, i32 4
  %183 = load i32, i32* %182, align 4
  %184 = sub nsw i32 %183, 1
  %185 = load %struct.TYPE_8__*, %struct.TYPE_8__** %12, align 8
  %186 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %185, i32 0, i32 5
  %187 = load i32, i32* %186, align 8
  %188 = icmp eq i32 %184, %187
  br i1 %188, label %189, label %194

189:                                              ; preds = %180, %160
  %190 = load i32*, i32** %4, align 8
  %191 = load i8**, i8*** %5, align 8
  %192 = load i8*, i8** %191, align 8
  %193 = call i32* @stb_ps_remove(i32* %190, i8* %192)
  store i32* %193, i32** %3, align 8
  br label %210

194:                                              ; preds = %180
  %195 = load i8*, i8** @STB_DEL, align 8
  %196 = load i8**, i8*** %13, align 8
  %197 = load i64, i64* %14, align 8
  %198 = getelementptr inbounds i8*, i8** %196, i64 %197
  store i8* %195, i8** %198, align 8
  %199 = load %struct.TYPE_8__*, %struct.TYPE_8__** %12, align 8
  %200 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %199, i32 0, i32 4
  %201 = load i32, i32* %200, align 4
  %202 = add nsw i32 %201, -1
  store i32 %202, i32* %200, align 4
  %203 = load %struct.TYPE_8__*, %struct.TYPE_8__** %12, align 8
  %204 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %203, i32 0, i32 3
  %205 = load i32, i32* %204, align 8
  %206 = add nsw i32 %205, 1
  store i32 %206, i32* %204, align 8
  %207 = load i32*, i32** %4, align 8
  store i32* %207, i32** %3, align 8
  br label %210

208:                                              ; preds = %2
  %209 = load i32*, i32** %4, align 8
  store i32* %209, i32** %3, align 8
  br label %210

210:                                              ; preds = %208, %194, %189, %130, %125, %105, %93, %23
  %211 = load i32*, i32** %3, align 8
  ret i32* %211
}

declare dso_local i32 @assert(i32) #1

declare dso_local %struct.TYPE_9__* @GetBucket(i32*) #1

declare dso_local i32 @stb_bucket_free(%struct.TYPE_9__*) #1

declare dso_local %struct.TYPE_10__* @GetArray(i32*) #1

declare dso_local i32* @stb_ps_remove(i32*, i8*) #1

declare dso_local %struct.TYPE_8__* @GetHash(i32*) #1

declare dso_local i32 @stb_ps_empty(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
