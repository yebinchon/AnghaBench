; ModuleID = '/home/carl/AnghaBench/reactos/sdk/tools/rsym/extr_rsym.c_ProcessRelocations.c'
source_filename = "/home/carl/AnghaBench/reactos/sdk/tools/rsym/extr_rsym.c_ProcessRelocations.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_14__ = type { i64, %struct.TYPE_12__* }
%struct.TYPE_12__ = type { i64, i32 }
%struct.TYPE_13__ = type { i32, i32, i64 }
%struct.TYPE_15__ = type { i64, i64 }

@IMAGE_DIRECTORY_ENTRY_BASERELOC = common dso_local global i64 0, align 8
@stderr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [47 x i8] c"Can't find section header for relocation data\0A\00", align 1
@.str.1 = private unnamed_addr constant [45 x i8] c"Failed to allocate %u bytes for relocations\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i8**, i8*, %struct.TYPE_14__*, i32, %struct.TYPE_13__*)* @ProcessRelocations to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ProcessRelocations(i32* %0, i8** %1, i8* %2, %struct.TYPE_14__* %3, i32 %4, %struct.TYPE_13__* %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i8**, align 8
  %10 = alloca i8*, align 8
  %11 = alloca %struct.TYPE_14__*, align 8
  %12 = alloca i32, align 4
  %13 = alloca %struct.TYPE_13__*, align 8
  %14 = alloca %struct.TYPE_13__*, align 8
  %15 = alloca %struct.TYPE_13__*, align 8
  %16 = alloca %struct.TYPE_15__*, align 8
  %17 = alloca %struct.TYPE_15__*, align 8
  %18 = alloca %struct.TYPE_15__*, align 8
  %19 = alloca i32, align 4
  store i32* %0, i32** %8, align 8
  store i8** %1, i8*** %9, align 8
  store i8* %2, i8** %10, align 8
  store %struct.TYPE_14__* %3, %struct.TYPE_14__** %11, align 8
  store i32 %4, i32* %12, align 4
  store %struct.TYPE_13__* %5, %struct.TYPE_13__** %13, align 8
  %20 = load %struct.TYPE_14__*, %struct.TYPE_14__** %11, align 8
  %21 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = load i64, i64* @IMAGE_DIRECTORY_ENTRY_BASERELOC, align 8
  %24 = icmp ult i64 %22, %23
  br i1 %24, label %34, label %25

25:                                               ; preds = %6
  %26 = load %struct.TYPE_14__*, %struct.TYPE_14__** %11, align 8
  %27 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %26, i32 0, i32 1
  %28 = load %struct.TYPE_12__*, %struct.TYPE_12__** %27, align 8
  %29 = load i64, i64* @IMAGE_DIRECTORY_ENTRY_BASERELOC, align 8
  %30 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %28, i64 %29
  %31 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = icmp eq i64 %32, 0
  br i1 %33, label %34, label %37

34:                                               ; preds = %25, %6
  %35 = load i32*, i32** %8, align 8
  store i32 0, i32* %35, align 4
  %36 = load i8**, i8*** %9, align 8
  store i8* null, i8** %36, align 8
  store i32 0, i32* %7, align 4
  br label %203

37:                                               ; preds = %25
  %38 = load %struct.TYPE_14__*, %struct.TYPE_14__** %11, align 8
  %39 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %38, i32 0, i32 1
  %40 = load %struct.TYPE_12__*, %struct.TYPE_12__** %39, align 8
  %41 = load i64, i64* @IMAGE_DIRECTORY_ENTRY_BASERELOC, align 8
  %42 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %40, i64 %41
  %43 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %42, i32 0, i32 0
  %44 = load i64, i64* %43, align 8
  %45 = load i32, i32* %12, align 4
  %46 = load %struct.TYPE_13__*, %struct.TYPE_13__** %13, align 8
  %47 = call %struct.TYPE_13__* @FindSectionForRVA(i64 %44, i32 %45, %struct.TYPE_13__* %46)
  store %struct.TYPE_13__* %47, %struct.TYPE_13__** %14, align 8
  %48 = load %struct.TYPE_13__*, %struct.TYPE_13__** %14, align 8
  %49 = icmp eq %struct.TYPE_13__* %48, null
  br i1 %49, label %50, label %53

50:                                               ; preds = %37
  %51 = load i32, i32* @stderr, align 4
  %52 = call i32 (i32, i8*, ...) @fprintf(i32 %51, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str, i64 0, i64 0))
  store i32 1, i32* %7, align 4
  br label %203

53:                                               ; preds = %37
  %54 = load %struct.TYPE_13__*, %struct.TYPE_13__** %14, align 8
  %55 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %54, i32 0, i32 2
  %56 = load i64, i64* %55, align 8
  %57 = call i8* @malloc(i64 %56)
  %58 = load i8**, i8*** %9, align 8
  store i8* %57, i8** %58, align 8
  %59 = load i8**, i8*** %9, align 8
  %60 = load i8*, i8** %59, align 8
  %61 = icmp eq i8* %60, null
  br i1 %61, label %62, label %69

62:                                               ; preds = %53
  %63 = load i32, i32* @stderr, align 4
  %64 = load %struct.TYPE_13__*, %struct.TYPE_13__** %14, align 8
  %65 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %64, i32 0, i32 2
  %66 = load i64, i64* %65, align 8
  %67 = trunc i64 %66 to i32
  %68 = call i32 (i32, i8*, ...) @fprintf(i32 %63, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.1, i64 0, i64 0), i32 %67)
  store i32 1, i32* %7, align 4
  br label %203

69:                                               ; preds = %53
  %70 = load i32*, i32** %8, align 8
  store i32 0, i32* %70, align 4
  %71 = load i8*, i8** %10, align 8
  %72 = load %struct.TYPE_13__*, %struct.TYPE_13__** %14, align 8
  %73 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 8
  %75 = sext i32 %74 to i64
  %76 = getelementptr inbounds i8, i8* %71, i64 %75
  %77 = load %struct.TYPE_14__*, %struct.TYPE_14__** %11, align 8
  %78 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %77, i32 0, i32 1
  %79 = load %struct.TYPE_12__*, %struct.TYPE_12__** %78, align 8
  %80 = load i64, i64* @IMAGE_DIRECTORY_ENTRY_BASERELOC, align 8
  %81 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %79, i64 %80
  %82 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %81, i32 0, i32 0
  %83 = load i64, i64* %82, align 8
  %84 = load %struct.TYPE_13__*, %struct.TYPE_13__** %14, align 8
  %85 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %84, i32 0, i32 1
  %86 = load i32, i32* %85, align 4
  %87 = sext i32 %86 to i64
  %88 = sub nsw i64 %83, %87
  %89 = getelementptr inbounds i8, i8* %76, i64 %88
  %90 = bitcast i8* %89 to %struct.TYPE_15__*
  store %struct.TYPE_15__* %90, %struct.TYPE_15__** %16, align 8
  %91 = load %struct.TYPE_15__*, %struct.TYPE_15__** %16, align 8
  %92 = bitcast %struct.TYPE_15__* %91 to i8*
  %93 = load %struct.TYPE_14__*, %struct.TYPE_14__** %11, align 8
  %94 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %93, i32 0, i32 1
  %95 = load %struct.TYPE_12__*, %struct.TYPE_12__** %94, align 8
  %96 = load i64, i64* @IMAGE_DIRECTORY_ENTRY_BASERELOC, align 8
  %97 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %95, i64 %96
  %98 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %97, i32 0, i32 1
  %99 = load i32, i32* %98, align 8
  %100 = sext i32 %99 to i64
  %101 = getelementptr inbounds i8, i8* %92, i64 %100
  %102 = bitcast i8* %101 to %struct.TYPE_15__*
  store %struct.TYPE_15__* %102, %struct.TYPE_15__** %17, align 8
  br label %103

103:                                              ; preds = %194, %69
  %104 = load %struct.TYPE_15__*, %struct.TYPE_15__** %16, align 8
  %105 = load %struct.TYPE_15__*, %struct.TYPE_15__** %17, align 8
  %106 = icmp ult %struct.TYPE_15__* %104, %105
  br i1 %106, label %107, label %112

107:                                              ; preds = %103
  %108 = load %struct.TYPE_15__*, %struct.TYPE_15__** %16, align 8
  %109 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %108, i32 0, i32 0
  %110 = load i64, i64* %109, align 8
  %111 = icmp sgt i64 %110, 0
  br label %112

112:                                              ; preds = %107, %103
  %113 = phi i1 [ false, %103 ], [ %111, %107 ]
  br i1 %113, label %114, label %202

114:                                              ; preds = %112
  %115 = load %struct.TYPE_15__*, %struct.TYPE_15__** %16, align 8
  %116 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %115, i32 0, i32 1
  %117 = load i64, i64* %116, align 8
  %118 = load i32, i32* %12, align 4
  %119 = load %struct.TYPE_13__*, %struct.TYPE_13__** %13, align 8
  %120 = call %struct.TYPE_13__* @FindSectionForRVA(i64 %117, i32 %118, %struct.TYPE_13__* %119)
  store %struct.TYPE_13__* %120, %struct.TYPE_13__** %15, align 8
  %121 = load %struct.TYPE_13__*, %struct.TYPE_13__** %15, align 8
  %122 = icmp ne %struct.TYPE_13__* %121, null
  br i1 %122, label %123, label %194

123:                                              ; preds = %114
  %124 = load i8**, i8*** %9, align 8
  %125 = load i8*, i8** %124, align 8
  %126 = bitcast i8* %125 to %struct.TYPE_15__*
  store %struct.TYPE_15__* %126, %struct.TYPE_15__** %18, align 8
  store i32 0, i32* %19, align 4
  br label %127

127:                                              ; preds = %159, %123
  %128 = load %struct.TYPE_15__*, %struct.TYPE_15__** %18, align 8
  %129 = load i8**, i8*** %9, align 8
  %130 = load i8*, i8** %129, align 8
  %131 = load i32*, i32** %8, align 8
  %132 = load i32, i32* %131, align 4
  %133 = sext i32 %132 to i64
  %134 = getelementptr inbounds i8, i8* %130, i64 %133
  %135 = bitcast i8* %134 to %struct.TYPE_15__*
  %136 = icmp ult %struct.TYPE_15__* %128, %135
  br i1 %136, label %137, label %141

137:                                              ; preds = %127
  %138 = load i32, i32* %19, align 4
  %139 = icmp ne i32 %138, 0
  %140 = xor i1 %139, true
  br label %141

141:                                              ; preds = %137, %127
  %142 = phi i1 [ false, %127 ], [ %140, %137 ]
  br i1 %142, label %143, label %169

143:                                              ; preds = %141
  %144 = load %struct.TYPE_15__*, %struct.TYPE_15__** %16, align 8
  %145 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %144, i32 0, i32 0
  %146 = load i64, i64* %145, align 8
  %147 = load %struct.TYPE_15__*, %struct.TYPE_15__** %18, align 8
  %148 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %147, i32 0, i32 0
  %149 = load i64, i64* %148, align 8
  %150 = icmp eq i64 %146, %149
  br i1 %150, label %151, label %159

151:                                              ; preds = %143
  %152 = load %struct.TYPE_15__*, %struct.TYPE_15__** %16, align 8
  %153 = load %struct.TYPE_15__*, %struct.TYPE_15__** %18, align 8
  %154 = load %struct.TYPE_15__*, %struct.TYPE_15__** %18, align 8
  %155 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %154, i32 0, i32 0
  %156 = load i64, i64* %155, align 8
  %157 = call i64 @memcmp(%struct.TYPE_15__* %152, %struct.TYPE_15__* %153, i64 %156)
  %158 = icmp eq i64 %157, 0
  br label %159

159:                                              ; preds = %151, %143
  %160 = phi i1 [ false, %143 ], [ %158, %151 ]
  %161 = zext i1 %160 to i32
  store i32 %161, i32* %19, align 4
  %162 = load %struct.TYPE_15__*, %struct.TYPE_15__** %18, align 8
  %163 = bitcast %struct.TYPE_15__* %162 to i8*
  %164 = load %struct.TYPE_15__*, %struct.TYPE_15__** %18, align 8
  %165 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %164, i32 0, i32 0
  %166 = load i64, i64* %165, align 8
  %167 = getelementptr inbounds i8, i8* %163, i64 %166
  %168 = bitcast i8* %167 to %struct.TYPE_15__*
  store %struct.TYPE_15__* %168, %struct.TYPE_15__** %18, align 8
  br label %127

169:                                              ; preds = %141
  %170 = load i32, i32* %19, align 4
  %171 = icmp ne i32 %170, 0
  br i1 %171, label %193, label %172

172:                                              ; preds = %169
  %173 = load i8**, i8*** %9, align 8
  %174 = load i8*, i8** %173, align 8
  %175 = load i32*, i32** %8, align 8
  %176 = load i32, i32* %175, align 4
  %177 = sext i32 %176 to i64
  %178 = getelementptr inbounds i8, i8* %174, i64 %177
  %179 = load %struct.TYPE_15__*, %struct.TYPE_15__** %16, align 8
  %180 = load %struct.TYPE_15__*, %struct.TYPE_15__** %16, align 8
  %181 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %180, i32 0, i32 0
  %182 = load i64, i64* %181, align 8
  %183 = trunc i64 %182 to i32
  %184 = call i32 @memcpy(i8* %178, %struct.TYPE_15__* %179, i32 %183)
  %185 = load %struct.TYPE_15__*, %struct.TYPE_15__** %16, align 8
  %186 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %185, i32 0, i32 0
  %187 = load i64, i64* %186, align 8
  %188 = load i32*, i32** %8, align 8
  %189 = load i32, i32* %188, align 4
  %190 = sext i32 %189 to i64
  %191 = add nsw i64 %190, %187
  %192 = trunc i64 %191 to i32
  store i32 %192, i32* %188, align 4
  br label %193

193:                                              ; preds = %172, %169
  br label %194

194:                                              ; preds = %193, %114
  %195 = load %struct.TYPE_15__*, %struct.TYPE_15__** %16, align 8
  %196 = bitcast %struct.TYPE_15__* %195 to i8*
  %197 = load %struct.TYPE_15__*, %struct.TYPE_15__** %16, align 8
  %198 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %197, i32 0, i32 0
  %199 = load i64, i64* %198, align 8
  %200 = getelementptr inbounds i8, i8* %196, i64 %199
  %201 = bitcast i8* %200 to %struct.TYPE_15__*
  store %struct.TYPE_15__* %201, %struct.TYPE_15__** %16, align 8
  br label %103

202:                                              ; preds = %112
  store i32 0, i32* %7, align 4
  br label %203

203:                                              ; preds = %202, %62, %50, %34
  %204 = load i32, i32* %7, align 4
  ret i32 %204
}

declare dso_local %struct.TYPE_13__* @FindSectionForRVA(i64, i32, %struct.TYPE_13__*) #1

declare dso_local i32 @fprintf(i32, i8*, ...) #1

declare dso_local i8* @malloc(i64) #1

declare dso_local i64 @memcmp(%struct.TYPE_15__*, %struct.TYPE_15__*, i64) #1

declare dso_local i32 @memcpy(i8*, %struct.TYPE_15__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
