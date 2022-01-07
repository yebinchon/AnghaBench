; ModuleID = '/home/carl/AnghaBench/redis/src/extr_t_stream.c_streamTrimByLength.c'
source_filename = "/home/carl/AnghaBench/redis/src/extr_t_stream.c_streamTrimByLength.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i64, i32 }
%struct.TYPE_9__ = type { i8*, i32, i32* }

@.str = private unnamed_addr constant [2 x i8] c"^\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c">=\00", align 1
@STREAM_ITEM_FLAG_DELETED = common dso_local global i32 0, align 4
@STREAM_ITEM_FLAG_SAMEFIELDS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @streamTrimByLength(%struct.TYPE_8__* %0, i64 %1, i32 %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca %struct.TYPE_8__*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_9__, align 8
  %9 = alloca i64, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  store %struct.TYPE_8__* %0, %struct.TYPE_8__** %5, align 8
  store i64 %1, i64* %6, align 8
  store i32 %2, i32* %7, align 4
  %19 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %20 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = load i64, i64* %6, align 8
  %23 = icmp ule i64 %21, %22
  br i1 %23, label %24, label %25

24:                                               ; preds = %3
  store i64 0, i64* %4, align 8
  br label %236

25:                                               ; preds = %3
  %26 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %27 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 8
  %29 = call i32 @raxStart(%struct.TYPE_9__* %8, i32 %28)
  %30 = call i32 @raxSeek(%struct.TYPE_9__* %8, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0), i32* null, i32 0)
  store i64 0, i64* %9, align 8
  br label %31

31:                                               ; preds = %57, %25
  %32 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %33 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = load i64, i64* %6, align 8
  %36 = icmp ugt i64 %34, %35
  br i1 %36, label %37, label %40

37:                                               ; preds = %31
  %38 = call i64 @raxNext(%struct.TYPE_9__* %8)
  %39 = icmp ne i64 %38, 0
  br label %40

40:                                               ; preds = %37, %31
  %41 = phi i1 [ false, %31 ], [ %39, %37 ]
  br i1 %41, label %42, label %233

42:                                               ; preds = %40
  %43 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %8, i32 0, i32 0
  %44 = load i8*, i8** %43, align 8
  store i8* %44, i8** %10, align 8
  %45 = load i8*, i8** %10, align 8
  %46 = call i8* @lpFirst(i8* %45)
  store i8* %46, i8** %11, align 8
  %47 = load i8*, i8** %11, align 8
  %48 = call i8* @lpGetInteger(i8* %47)
  %49 = ptrtoint i8* %48 to i64
  store i64 %49, i64* %12, align 8
  %50 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %51 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %50, i32 0, i32 0
  %52 = load i64, i64* %51, align 8
  %53 = load i64, i64* %12, align 8
  %54 = sub i64 %52, %53
  %55 = load i64, i64* %6, align 8
  %56 = icmp uge i64 %54, %55
  br i1 %56, label %57, label %81

57:                                               ; preds = %42
  %58 = load i8*, i8** %10, align 8
  %59 = call i32 @lpFree(i8* %58)
  %60 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %61 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %60, i32 0, i32 1
  %62 = load i32, i32* %61, align 8
  %63 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %8, i32 0, i32 2
  %64 = load i32*, i32** %63, align 8
  %65 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %8, i32 0, i32 1
  %66 = load i32, i32* %65, align 8
  %67 = call i32 @raxRemove(i32 %62, i32* %64, i32 %66, i32* null)
  %68 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %8, i32 0, i32 2
  %69 = load i32*, i32** %68, align 8
  %70 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %8, i32 0, i32 1
  %71 = load i32, i32* %70, align 8
  %72 = call i32 @raxSeek(%struct.TYPE_9__* %8, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i32* %69, i32 %71)
  %73 = load i64, i64* %12, align 8
  %74 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %75 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %74, i32 0, i32 0
  %76 = load i64, i64* %75, align 8
  %77 = sub i64 %76, %73
  store i64 %77, i64* %75, align 8
  %78 = load i64, i64* %12, align 8
  %79 = load i64, i64* %9, align 8
  %80 = add i64 %79, %78
  store i64 %80, i64* %9, align 8
  br label %31

81:                                               ; preds = %42
  %82 = load i32, i32* %7, align 4
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %84, label %85

84:                                               ; preds = %81
  br label %233

85:                                               ; preds = %81
  %86 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %87 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %86, i32 0, i32 0
  %88 = load i64, i64* %87, align 8
  %89 = load i64, i64* %6, align 8
  %90 = sub i64 %88, %89
  store i64 %90, i64* %13, align 8
  %91 = load i64, i64* %13, align 8
  %92 = load i64, i64* %12, align 8
  %93 = icmp ult i64 %91, %92
  %94 = zext i1 %93 to i32
  %95 = call i32 @serverAssert(i32 %94)
  %96 = load i8*, i8** %10, align 8
  %97 = load i64, i64* %12, align 8
  %98 = load i64, i64* %13, align 8
  %99 = sub i64 %97, %98
  %100 = trunc i64 %99 to i32
  %101 = call i8* @lpReplaceInteger(i8* %96, i8** %11, i32 %100)
  store i8* %101, i8** %10, align 8
  %102 = load i8*, i8** %10, align 8
  %103 = load i8*, i8** %11, align 8
  %104 = call i8* @lpNext(i8* %102, i8* %103)
  store i8* %104, i8** %11, align 8
  %105 = load i8*, i8** %11, align 8
  %106 = call i8* @lpGetInteger(i8* %105)
  %107 = ptrtoint i8* %106 to i64
  store i64 %107, i64* %14, align 8
  %108 = load i8*, i8** %10, align 8
  %109 = load i64, i64* %14, align 8
  %110 = load i64, i64* %13, align 8
  %111 = add i64 %109, %110
  %112 = trunc i64 %111 to i32
  %113 = call i8* @lpReplaceInteger(i8* %108, i8** %11, i32 %112)
  store i8* %113, i8** %10, align 8
  %114 = load i8*, i8** %10, align 8
  %115 = load i8*, i8** %11, align 8
  %116 = call i8* @lpNext(i8* %114, i8* %115)
  store i8* %116, i8** %11, align 8
  %117 = load i8*, i8** %11, align 8
  %118 = call i8* @lpGetInteger(i8* %117)
  %119 = ptrtoint i8* %118 to i64
  store i64 %119, i64* %15, align 8
  %120 = load i8*, i8** %10, align 8
  %121 = load i8*, i8** %11, align 8
  %122 = call i8* @lpNext(i8* %120, i8* %121)
  store i8* %122, i8** %11, align 8
  store i64 0, i64* %16, align 8
  br label %123

123:                                              ; preds = %131, %85
  %124 = load i64, i64* %16, align 8
  %125 = load i64, i64* %15, align 8
  %126 = icmp ult i64 %124, %125
  br i1 %126, label %127, label %134

127:                                              ; preds = %123
  %128 = load i8*, i8** %10, align 8
  %129 = load i8*, i8** %11, align 8
  %130 = call i8* @lpNext(i8* %128, i8* %129)
  store i8* %130, i8** %11, align 8
  br label %131

131:                                              ; preds = %127
  %132 = load i64, i64* %16, align 8
  %133 = add i64 %132, 1
  store i64 %133, i64* %16, align 8
  br label %123

134:                                              ; preds = %123
  %135 = load i8*, i8** %10, align 8
  %136 = load i8*, i8** %11, align 8
  %137 = call i8* @lpNext(i8* %135, i8* %136)
  store i8* %137, i8** %11, align 8
  br label %138

138:                                              ; preds = %202, %134
  %139 = load i8*, i8** %11, align 8
  %140 = icmp ne i8* %139, null
  br i1 %140, label %141, label %206

141:                                              ; preds = %138
  %142 = load i8*, i8** %11, align 8
  %143 = call i8* @lpGetInteger(i8* %142)
  %144 = ptrtoint i8* %143 to i32
  store i32 %144, i32* %17, align 4
  %145 = load i32, i32* %17, align 4
  %146 = load i32, i32* @STREAM_ITEM_FLAG_DELETED, align 4
  %147 = and i32 %145, %146
  %148 = icmp ne i32 %147, 0
  br i1 %148, label %169, label %149

149:                                              ; preds = %141
  %150 = load i32, i32* @STREAM_ITEM_FLAG_DELETED, align 4
  %151 = load i32, i32* %17, align 4
  %152 = or i32 %151, %150
  store i32 %152, i32* %17, align 4
  %153 = load i8*, i8** %10, align 8
  %154 = load i32, i32* %17, align 4
  %155 = call i8* @lpReplaceInteger(i8* %153, i8** %11, i32 %154)
  store i8* %155, i8** %10, align 8
  %156 = load i64, i64* %9, align 8
  %157 = add i64 %156, 1
  store i64 %157, i64* %9, align 8
  %158 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %159 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %158, i32 0, i32 0
  %160 = load i64, i64* %159, align 8
  %161 = add i64 %160, -1
  store i64 %161, i64* %159, align 8
  %162 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %163 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %162, i32 0, i32 0
  %164 = load i64, i64* %163, align 8
  %165 = load i64, i64* %6, align 8
  %166 = icmp ule i64 %164, %165
  br i1 %166, label %167, label %168

167:                                              ; preds = %149
  br label %206

168:                                              ; preds = %149
  br label %169

169:                                              ; preds = %168, %141
  %170 = load i8*, i8** %10, align 8
  %171 = load i8*, i8** %11, align 8
  %172 = call i8* @lpNext(i8* %170, i8* %171)
  store i8* %172, i8** %11, align 8
  %173 = load i8*, i8** %10, align 8
  %174 = load i8*, i8** %11, align 8
  %175 = call i8* @lpNext(i8* %173, i8* %174)
  store i8* %175, i8** %11, align 8
  %176 = load i8*, i8** %10, align 8
  %177 = load i8*, i8** %11, align 8
  %178 = call i8* @lpNext(i8* %176, i8* %177)
  store i8* %178, i8** %11, align 8
  %179 = load i32, i32* %17, align 4
  %180 = load i32, i32* @STREAM_ITEM_FLAG_SAMEFIELDS, align 4
  %181 = and i32 %179, %180
  %182 = icmp ne i32 %181, 0
  br i1 %182, label %183, label %186

183:                                              ; preds = %169
  %184 = load i64, i64* %15, align 8
  %185 = trunc i64 %184 to i32
  store i32 %185, i32* %18, align 4
  br label %193

186:                                              ; preds = %169
  %187 = load i8*, i8** %11, align 8
  %188 = call i8* @lpGetInteger(i8* %187)
  %189 = ptrtoint i8* %188 to i32
  store i32 %189, i32* %18, align 4
  %190 = load i32, i32* %18, align 4
  %191 = mul nsw i32 %190, 2
  %192 = add nsw i32 1, %191
  store i32 %192, i32* %18, align 4
  br label %193

193:                                              ; preds = %186, %183
  br label %194

194:                                              ; preds = %198, %193
  %195 = load i32, i32* %18, align 4
  %196 = add nsw i32 %195, -1
  store i32 %196, i32* %18, align 4
  %197 = icmp ne i32 %195, 0
  br i1 %197, label %198, label %202

198:                                              ; preds = %194
  %199 = load i8*, i8** %10, align 8
  %200 = load i8*, i8** %11, align 8
  %201 = call i8* @lpNext(i8* %199, i8* %200)
  store i8* %201, i8** %11, align 8
  br label %194

202:                                              ; preds = %194
  %203 = load i8*, i8** %10, align 8
  %204 = load i8*, i8** %11, align 8
  %205 = call i8* @lpNext(i8* %203, i8* %204)
  store i8* %205, i8** %11, align 8
  br label %138

206:                                              ; preds = %167, %138
  %207 = load i64, i64* %13, align 8
  %208 = load i64, i64* %12, align 8
  %209 = sub i64 %208, %207
  store i64 %209, i64* %12, align 8
  %210 = load i64, i64* %13, align 8
  %211 = load i64, i64* %14, align 8
  %212 = add i64 %211, %210
  store i64 %212, i64* %14, align 8
  %213 = load i64, i64* %12, align 8
  %214 = load i64, i64* %14, align 8
  %215 = add i64 %213, %214
  %216 = icmp ugt i64 %215, 10
  br i1 %216, label %217, label %223

217:                                              ; preds = %206
  %218 = load i64, i64* %14, align 8
  %219 = load i64, i64* %12, align 8
  %220 = udiv i64 %219, 2
  %221 = icmp ugt i64 %218, %220
  br i1 %221, label %222, label %223

222:                                              ; preds = %217
  br label %223

223:                                              ; preds = %222, %217, %206
  %224 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %225 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %224, i32 0, i32 1
  %226 = load i32, i32* %225, align 8
  %227 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %8, i32 0, i32 2
  %228 = load i32*, i32** %227, align 8
  %229 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %8, i32 0, i32 1
  %230 = load i32, i32* %229, align 8
  %231 = load i8*, i8** %10, align 8
  %232 = call i32 @raxInsert(i32 %226, i32* %228, i32 %230, i8* %231, i32* null)
  br label %233

233:                                              ; preds = %223, %84, %40
  %234 = call i32 @raxStop(%struct.TYPE_9__* %8)
  %235 = load i64, i64* %9, align 8
  store i64 %235, i64* %4, align 8
  br label %236

236:                                              ; preds = %233, %24
  %237 = load i64, i64* %4, align 8
  ret i64 %237
}

declare dso_local i32 @raxStart(%struct.TYPE_9__*, i32) #1

declare dso_local i32 @raxSeek(%struct.TYPE_9__*, i8*, i32*, i32) #1

declare dso_local i64 @raxNext(%struct.TYPE_9__*) #1

declare dso_local i8* @lpFirst(i8*) #1

declare dso_local i8* @lpGetInteger(i8*) #1

declare dso_local i32 @lpFree(i8*) #1

declare dso_local i32 @raxRemove(i32, i32*, i32, i32*) #1

declare dso_local i32 @serverAssert(i32) #1

declare dso_local i8* @lpReplaceInteger(i8*, i8**, i32) #1

declare dso_local i8* @lpNext(i8*, i8*) #1

declare dso_local i32 @raxInsert(i32, i32*, i32, i8*, i32*) #1

declare dso_local i32 @raxStop(%struct.TYPE_9__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
