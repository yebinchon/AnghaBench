; ModuleID = '/home/carl/AnghaBench/redis/src/extr_sort.c_lookupKeyByPattern.c'
source_filename = "/home/carl/AnghaBench/redis/src/extr_sort.c_lookupKeyByPattern.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_16__ = type { i8*, i64 }

@.str = private unnamed_addr constant [3 x i8] c"->\00", align 1
@OBJ_HASH = common dso_local global i64 0, align 8
@OBJ_STRING = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.TYPE_16__* @lookupKeyByPattern(i32* %0, %struct.TYPE_16__* %1, %struct.TYPE_16__* %2, i32 %3) #0 {
  %5 = alloca %struct.TYPE_16__*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca %struct.TYPE_16__*, align 8
  %8 = alloca %struct.TYPE_16__*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca %struct.TYPE_16__*, align 8
  %16 = alloca %struct.TYPE_16__*, align 8
  %17 = alloca %struct.TYPE_16__*, align 8
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  store i32* %0, i32** %6, align 8
  store %struct.TYPE_16__* %1, %struct.TYPE_16__** %7, align 8
  store %struct.TYPE_16__* %2, %struct.TYPE_16__** %8, align 8
  store i32 %3, i32* %9, align 4
  store %struct.TYPE_16__* null, %struct.TYPE_16__** %16, align 8
  %22 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %23 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %22, i32 0, i32 0
  %24 = load i8*, i8** %23, align 8
  store i8* %24, i8** %13, align 8
  %25 = load i8*, i8** %13, align 8
  %26 = getelementptr inbounds i8, i8* %25, i64 0
  %27 = load i8, i8* %26, align 1
  %28 = sext i8 %27 to i32
  %29 = icmp eq i32 %28, 35
  br i1 %29, label %30, label %40

30:                                               ; preds = %4
  %31 = load i8*, i8** %13, align 8
  %32 = getelementptr inbounds i8, i8* %31, i64 1
  %33 = load i8, i8* %32, align 1
  %34 = sext i8 %33 to i32
  %35 = icmp eq i32 %34, 0
  br i1 %35, label %36, label %40

36:                                               ; preds = %30
  %37 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %38 = call i32 @incrRefCount(%struct.TYPE_16__* %37)
  %39 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  store %struct.TYPE_16__* %39, %struct.TYPE_16__** %5, align 8
  br label %196

40:                                               ; preds = %30, %4
  %41 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %42 = call %struct.TYPE_16__* @getDecodedObject(%struct.TYPE_16__* %41)
  store %struct.TYPE_16__* %42, %struct.TYPE_16__** %8, align 8
  %43 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %44 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %43, i32 0, i32 0
  %45 = load i8*, i8** %44, align 8
  store i8* %45, i8** %14, align 8
  %46 = load i8*, i8** %13, align 8
  %47 = call i8* @strchr(i8* %46, i8 signext 42)
  store i8* %47, i8** %10, align 8
  %48 = load i8*, i8** %10, align 8
  %49 = icmp ne i8* %48, null
  br i1 %49, label %53, label %50

50:                                               ; preds = %40
  %51 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %52 = call i32 @decrRefCount(%struct.TYPE_16__* %51)
  store %struct.TYPE_16__* null, %struct.TYPE_16__** %5, align 8
  br label %196

53:                                               ; preds = %40
  %54 = load i8*, i8** %10, align 8
  %55 = getelementptr inbounds i8, i8* %54, i64 1
  %56 = call i8* @strstr(i8* %55, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0))
  store i8* %56, i8** %11, align 8
  %57 = icmp ne i8* %56, null
  br i1 %57, label %58, label %80

58:                                               ; preds = %53
  %59 = load i8*, i8** %11, align 8
  %60 = getelementptr inbounds i8, i8* %59, i64 2
  %61 = load i8, i8* %60, align 1
  %62 = sext i8 %61 to i32
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %64, label %80

64:                                               ; preds = %58
  %65 = load i8*, i8** %13, align 8
  %66 = call i32 @sdslen(i8* %65)
  %67 = sext i32 %66 to i64
  %68 = load i8*, i8** %11, align 8
  %69 = load i8*, i8** %13, align 8
  %70 = ptrtoint i8* %68 to i64
  %71 = ptrtoint i8* %69 to i64
  %72 = sub i64 %70, %71
  %73 = sub nsw i64 %67, %72
  %74 = sub nsw i64 %73, 2
  %75 = trunc i64 %74 to i32
  store i32 %75, i32* %21, align 4
  %76 = load i8*, i8** %11, align 8
  %77 = getelementptr inbounds i8, i8* %76, i64 2
  %78 = load i32, i32* %21, align 4
  %79 = call %struct.TYPE_16__* @createStringObject(i8* %77, i32 %78)
  store %struct.TYPE_16__* %79, %struct.TYPE_16__** %16, align 8
  br label %81

80:                                               ; preds = %58, %53
  store i32 0, i32* %21, align 4
  br label %81

81:                                               ; preds = %80, %64
  %82 = load i8*, i8** %10, align 8
  %83 = load i8*, i8** %13, align 8
  %84 = ptrtoint i8* %82 to i64
  %85 = ptrtoint i8* %83 to i64
  %86 = sub i64 %84, %85
  %87 = trunc i64 %86 to i32
  store i32 %87, i32* %18, align 4
  %88 = load i8*, i8** %14, align 8
  %89 = call i32 @sdslen(i8* %88)
  store i32 %89, i32* %19, align 4
  %90 = load i8*, i8** %13, align 8
  %91 = call i32 @sdslen(i8* %90)
  %92 = load i32, i32* %18, align 4
  %93 = add nsw i32 %92, 1
  %94 = sub nsw i32 %91, %93
  %95 = load i32, i32* %21, align 4
  %96 = icmp ne i32 %95, 0
  br i1 %96, label %97, label %100

97:                                               ; preds = %81
  %98 = load i32, i32* %21, align 4
  %99 = add nsw i32 %98, 2
  br label %101

100:                                              ; preds = %81
  br label %101

101:                                              ; preds = %100, %97
  %102 = phi i32 [ %99, %97 ], [ 0, %100 ]
  %103 = sub nsw i32 %94, %102
  store i32 %103, i32* %20, align 4
  %104 = load i32, i32* %18, align 4
  %105 = load i32, i32* %19, align 4
  %106 = add nsw i32 %104, %105
  %107 = load i32, i32* %20, align 4
  %108 = add nsw i32 %106, %107
  %109 = call %struct.TYPE_16__* @createStringObject(i8* null, i32 %108)
  store %struct.TYPE_16__* %109, %struct.TYPE_16__** %15, align 8
  %110 = load %struct.TYPE_16__*, %struct.TYPE_16__** %15, align 8
  %111 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %110, i32 0, i32 0
  %112 = load i8*, i8** %111, align 8
  store i8* %112, i8** %12, align 8
  %113 = load i8*, i8** %12, align 8
  %114 = load i8*, i8** %13, align 8
  %115 = load i32, i32* %18, align 4
  %116 = call i32 @memcpy(i8* %113, i8* %114, i32 %115)
  %117 = load i8*, i8** %12, align 8
  %118 = load i32, i32* %18, align 4
  %119 = sext i32 %118 to i64
  %120 = getelementptr inbounds i8, i8* %117, i64 %119
  %121 = load i8*, i8** %14, align 8
  %122 = load i32, i32* %19, align 4
  %123 = call i32 @memcpy(i8* %120, i8* %121, i32 %122)
  %124 = load i8*, i8** %12, align 8
  %125 = load i32, i32* %18, align 4
  %126 = sext i32 %125 to i64
  %127 = getelementptr inbounds i8, i8* %124, i64 %126
  %128 = load i32, i32* %19, align 4
  %129 = sext i32 %128 to i64
  %130 = getelementptr inbounds i8, i8* %127, i64 %129
  %131 = load i8*, i8** %10, align 8
  %132 = getelementptr inbounds i8, i8* %131, i64 1
  %133 = load i32, i32* %20, align 4
  %134 = call i32 @memcpy(i8* %130, i8* %132, i32 %133)
  %135 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %136 = call i32 @decrRefCount(%struct.TYPE_16__* %135)
  %137 = load i32, i32* %9, align 4
  %138 = icmp ne i32 %137, 0
  br i1 %138, label %143, label %139

139:                                              ; preds = %101
  %140 = load i32*, i32** %6, align 8
  %141 = load %struct.TYPE_16__*, %struct.TYPE_16__** %15, align 8
  %142 = call %struct.TYPE_16__* @lookupKeyRead(i32* %140, %struct.TYPE_16__* %141)
  store %struct.TYPE_16__* %142, %struct.TYPE_16__** %17, align 8
  br label %147

143:                                              ; preds = %101
  %144 = load i32*, i32** %6, align 8
  %145 = load %struct.TYPE_16__*, %struct.TYPE_16__** %15, align 8
  %146 = call %struct.TYPE_16__* @lookupKeyWrite(i32* %144, %struct.TYPE_16__* %145)
  store %struct.TYPE_16__* %146, %struct.TYPE_16__** %17, align 8
  br label %147

147:                                              ; preds = %143, %139
  %148 = load %struct.TYPE_16__*, %struct.TYPE_16__** %17, align 8
  %149 = icmp eq %struct.TYPE_16__* %148, null
  br i1 %149, label %150, label %151

150:                                              ; preds = %147
  br label %187

151:                                              ; preds = %147
  %152 = load %struct.TYPE_16__*, %struct.TYPE_16__** %16, align 8
  %153 = icmp ne %struct.TYPE_16__* %152, null
  br i1 %153, label %154, label %167

154:                                              ; preds = %151
  %155 = load %struct.TYPE_16__*, %struct.TYPE_16__** %17, align 8
  %156 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %155, i32 0, i32 1
  %157 = load i64, i64* %156, align 8
  %158 = load i64, i64* @OBJ_HASH, align 8
  %159 = icmp ne i64 %157, %158
  br i1 %159, label %160, label %161

160:                                              ; preds = %154
  br label %187

161:                                              ; preds = %154
  %162 = load %struct.TYPE_16__*, %struct.TYPE_16__** %17, align 8
  %163 = load %struct.TYPE_16__*, %struct.TYPE_16__** %16, align 8
  %164 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %163, i32 0, i32 0
  %165 = load i8*, i8** %164, align 8
  %166 = call %struct.TYPE_16__* @hashTypeGetValueObject(%struct.TYPE_16__* %162, i8* %165)
  store %struct.TYPE_16__* %166, %struct.TYPE_16__** %17, align 8
  br label %177

167:                                              ; preds = %151
  %168 = load %struct.TYPE_16__*, %struct.TYPE_16__** %17, align 8
  %169 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %168, i32 0, i32 1
  %170 = load i64, i64* %169, align 8
  %171 = load i64, i64* @OBJ_STRING, align 8
  %172 = icmp ne i64 %170, %171
  br i1 %172, label %173, label %174

173:                                              ; preds = %167
  br label %187

174:                                              ; preds = %167
  %175 = load %struct.TYPE_16__*, %struct.TYPE_16__** %17, align 8
  %176 = call i32 @incrRefCount(%struct.TYPE_16__* %175)
  br label %177

177:                                              ; preds = %174, %161
  %178 = load %struct.TYPE_16__*, %struct.TYPE_16__** %15, align 8
  %179 = call i32 @decrRefCount(%struct.TYPE_16__* %178)
  %180 = load %struct.TYPE_16__*, %struct.TYPE_16__** %16, align 8
  %181 = icmp ne %struct.TYPE_16__* %180, null
  br i1 %181, label %182, label %185

182:                                              ; preds = %177
  %183 = load %struct.TYPE_16__*, %struct.TYPE_16__** %16, align 8
  %184 = call i32 @decrRefCount(%struct.TYPE_16__* %183)
  br label %185

185:                                              ; preds = %182, %177
  %186 = load %struct.TYPE_16__*, %struct.TYPE_16__** %17, align 8
  store %struct.TYPE_16__* %186, %struct.TYPE_16__** %5, align 8
  br label %196

187:                                              ; preds = %173, %160, %150
  %188 = load %struct.TYPE_16__*, %struct.TYPE_16__** %15, align 8
  %189 = call i32 @decrRefCount(%struct.TYPE_16__* %188)
  %190 = load i32, i32* %21, align 4
  %191 = icmp ne i32 %190, 0
  br i1 %191, label %192, label %195

192:                                              ; preds = %187
  %193 = load %struct.TYPE_16__*, %struct.TYPE_16__** %16, align 8
  %194 = call i32 @decrRefCount(%struct.TYPE_16__* %193)
  br label %195

195:                                              ; preds = %192, %187
  store %struct.TYPE_16__* null, %struct.TYPE_16__** %5, align 8
  br label %196

196:                                              ; preds = %195, %185, %50, %36
  %197 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  ret %struct.TYPE_16__* %197
}

declare dso_local i32 @incrRefCount(%struct.TYPE_16__*) #1

declare dso_local %struct.TYPE_16__* @getDecodedObject(%struct.TYPE_16__*) #1

declare dso_local i8* @strchr(i8*, i8 signext) #1

declare dso_local i32 @decrRefCount(%struct.TYPE_16__*) #1

declare dso_local i8* @strstr(i8*, i8*) #1

declare dso_local i32 @sdslen(i8*) #1

declare dso_local %struct.TYPE_16__* @createStringObject(i8*, i32) #1

declare dso_local i32 @memcpy(i8*, i8*, i32) #1

declare dso_local %struct.TYPE_16__* @lookupKeyRead(i32*, %struct.TYPE_16__*) #1

declare dso_local %struct.TYPE_16__* @lookupKeyWrite(i32*, %struct.TYPE_16__*) #1

declare dso_local %struct.TYPE_16__* @hashTypeGetValueObject(%struct.TYPE_16__*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
