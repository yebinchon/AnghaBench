; ModuleID = '/home/carl/AnghaBench/reactos/sdk/tools/rsym/extr_rsym.cmake.c_main.c'
source_filename = "/home/carl/AnghaBench/reactos/sdk/tools/rsym/extr_rsym.cmake.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { %struct.TYPE_11__, %struct.TYPE_13__ }
%struct.TYPE_11__ = type { i64, i32 }
%struct.TYPE_13__ = type { i32, i32 }
%struct.TYPE_14__ = type { i64, i64 }
%struct.TYPE_10__ = type { i32, i64, i64, i64, %struct.TYPE_9__ }
%struct.TYPE_9__ = type { i64 }

@__const.main.elfhdr = private unnamed_addr constant [4 x i8] c"\FFELF", align 1
@stderr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [33 x i8] c"Usage: rsym <exefile> <symfile>\0A\00", align 1
@.str.1 = private unnamed_addr constant [31 x i8] c"An error occured loading '%s'\0A\00", align 1
@IMAGE_DOS_MAGIC = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [31 x i8] c"Input file is not a PE image.\0A\00", align 1
@IMAGE_SCN_CNT_INITIALIZED_DATA = common dso_local global i32 0, align 4
@IMAGE_SCN_MEM_PURGEABLE = common dso_local global i32 0, align 4
@IMAGE_SCN_MEM_DISCARDABLE = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [3 x i8] c"wb\00", align 1
@.str.4 = private unnamed_addr constant [24 x i8] c"Cannot open output file\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_12__*, align 8
  %9 = alloca %struct.TYPE_14__*, align 8
  %10 = alloca %struct.TYPE_13__*, align 8
  %11 = alloca %struct.TYPE_11__*, align 8
  %12 = alloca %struct.TYPE_10__*, align 8
  %13 = alloca %struct.TYPE_10__*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i8*, align 8
  %16 = alloca i32*, align 8
  %17 = alloca i64, align 8
  %18 = alloca i8*, align 8
  %19 = alloca [4 x i8], align 1
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  %20 = bitcast [4 x i8]* %19 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %20, i8* align 1 getelementptr inbounds ([4 x i8], [4 x i8]* @__const.main.elfhdr, i32 0, i32 0), i64 4, i1 false)
  %21 = load i32, i32* %4, align 4
  %22 = icmp ne i32 %21, 3
  br i1 %22, label %23, label %27

23:                                               ; preds = %2
  %24 = load i32, i32* @stderr, align 4
  %25 = call i32 (i32, i8*, ...) @fprintf(i32 %24, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0))
  %26 = call i32 @exit(i32 1) #4
  unreachable

27:                                               ; preds = %2
  %28 = load i8**, i8*** %5, align 8
  %29 = getelementptr inbounds i8*, i8** %28, i64 1
  %30 = load i8*, i8** %29, align 8
  %31 = call i8* @convert_path(i8* %30)
  store i8* %31, i8** %14, align 8
  %32 = load i8**, i8*** %5, align 8
  %33 = getelementptr inbounds i8*, i8** %32, i64 2
  %34 = load i8*, i8** %33, align 8
  %35 = call i8* @convert_path(i8* %34)
  store i8* %35, i8** %15, align 8
  %36 = load i8*, i8** %14, align 8
  %37 = call i8* @load_file(i8* %36, i64* %17)
  store i8* %37, i8** %18, align 8
  %38 = load i8*, i8** %18, align 8
  %39 = icmp ne i8* %38, null
  br i1 %39, label %45, label %40

40:                                               ; preds = %27
  %41 = load i32, i32* @stderr, align 4
  %42 = load i8*, i8** %14, align 8
  %43 = call i32 (i32, i8*, ...) @fprintf(i32 %41, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.1, i64 0, i64 0), i8* %42)
  %44 = call i32 @exit(i32 1) #4
  unreachable

45:                                               ; preds = %27
  %46 = load i8*, i8** %18, align 8
  %47 = bitcast i8* %46 to %struct.TYPE_14__*
  store %struct.TYPE_14__* %47, %struct.TYPE_14__** %9, align 8
  %48 = load %struct.TYPE_14__*, %struct.TYPE_14__** %9, align 8
  %49 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %48, i32 0, i32 0
  %50 = load i64, i64* %49, align 8
  %51 = load i64, i64* @IMAGE_DOS_MAGIC, align 8
  %52 = icmp ne i64 %50, %51
  br i1 %52, label %58, label %53

53:                                               ; preds = %45
  %54 = load %struct.TYPE_14__*, %struct.TYPE_14__** %9, align 8
  %55 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %54, i32 0, i32 1
  %56 = load i64, i64* %55, align 8
  %57 = icmp eq i64 %56, 0
  br i1 %57, label %58, label %70

58:                                               ; preds = %53, %45
  %59 = load %struct.TYPE_14__*, %struct.TYPE_14__** %9, align 8
  %60 = getelementptr inbounds [4 x i8], [4 x i8]* %19, i64 0, i64 0
  %61 = call i32 @memcmp(%struct.TYPE_14__* %59, i8* %60, i32 4)
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %65, label %63

63:                                               ; preds = %58
  %64 = call i32 @exit(i32 0) #4
  unreachable

65:                                               ; preds = %58
  %66 = call i32 @perror(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.2, i64 0, i64 0))
  %67 = load i8*, i8** %18, align 8
  %68 = call i32 @free(i8* %67)
  %69 = call i32 @exit(i32 1) #4
  unreachable

70:                                               ; preds = %53
  %71 = load i8*, i8** %18, align 8
  %72 = load %struct.TYPE_14__*, %struct.TYPE_14__** %9, align 8
  %73 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %72, i32 0, i32 1
  %74 = load i64, i64* %73, align 8
  %75 = getelementptr inbounds i8, i8* %71, i64 %74
  %76 = bitcast i8* %75 to %struct.TYPE_12__*
  store %struct.TYPE_12__* %76, %struct.TYPE_12__** %8, align 8
  %77 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %78 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %77, i32 0, i32 1
  store %struct.TYPE_13__* %78, %struct.TYPE_13__** %10, align 8
  %79 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %80 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %79, i32 0, i32 0
  store %struct.TYPE_11__* %80, %struct.TYPE_11__** %11, align 8
  %81 = load %struct.TYPE_11__*, %struct.TYPE_11__** %11, align 8
  %82 = bitcast %struct.TYPE_11__* %81 to i8*
  %83 = load %struct.TYPE_13__*, %struct.TYPE_13__** %10, align 8
  %84 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %83, i32 0, i32 0
  %85 = load i32, i32* %84, align 4
  %86 = sext i32 %85 to i64
  %87 = getelementptr inbounds i8, i8* %82, i64 %86
  %88 = bitcast i8* %87 to %struct.TYPE_10__*
  store %struct.TYPE_10__* %88, %struct.TYPE_10__** %12, align 8
  store i32 0, i32* %6, align 4
  br label %89

89:                                               ; preds = %123, %70
  %90 = load i32, i32* %6, align 4
  %91 = load %struct.TYPE_13__*, %struct.TYPE_13__** %10, align 8
  %92 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %91, i32 0, i32 1
  %93 = load i32, i32* %92, align 4
  %94 = icmp ult i32 %90, %93
  br i1 %94, label %95, label %126

95:                                               ; preds = %89
  %96 = load %struct.TYPE_10__*, %struct.TYPE_10__** %12, align 8
  %97 = load i32, i32* %6, align 4
  %98 = zext i32 %97 to i64
  %99 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %96, i64 %98
  %100 = call i64 @IsDebugSection(%struct.TYPE_10__* %99)
  %101 = icmp ne i64 %100, 0
  br i1 %101, label %102, label %122

102:                                              ; preds = %95
  %103 = load i32, i32* @IMAGE_SCN_CNT_INITIALIZED_DATA, align 4
  %104 = load %struct.TYPE_10__*, %struct.TYPE_10__** %12, align 8
  %105 = load i32, i32* %6, align 4
  %106 = zext i32 %105 to i64
  %107 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %104, i64 %106
  %108 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %107, i32 0, i32 0
  %109 = load i32, i32* %108, align 8
  %110 = or i32 %109, %103
  store i32 %110, i32* %108, align 8
  %111 = load i32, i32* @IMAGE_SCN_MEM_PURGEABLE, align 4
  %112 = load i32, i32* @IMAGE_SCN_MEM_DISCARDABLE, align 4
  %113 = or i32 %111, %112
  %114 = xor i32 %113, -1
  %115 = load %struct.TYPE_10__*, %struct.TYPE_10__** %12, align 8
  %116 = load i32, i32* %6, align 4
  %117 = zext i32 %116 to i64
  %118 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %115, i64 %117
  %119 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %118, i32 0, i32 0
  %120 = load i32, i32* %119, align 8
  %121 = and i32 %120, %114
  store i32 %121, i32* %119, align 8
  br label %122

122:                                              ; preds = %102, %95
  br label %123

123:                                              ; preds = %122
  %124 = load i32, i32* %6, align 4
  %125 = add i32 %124, 1
  store i32 %125, i32* %6, align 4
  br label %89

126:                                              ; preds = %89
  %127 = load %struct.TYPE_10__*, %struct.TYPE_10__** %12, align 8
  %128 = load %struct.TYPE_13__*, %struct.TYPE_13__** %10, align 8
  %129 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %128, i32 0, i32 1
  %130 = load i32, i32* %129, align 4
  %131 = sub i32 %130, 1
  %132 = zext i32 %131 to i64
  %133 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %127, i64 %132
  store %struct.TYPE_10__* %133, %struct.TYPE_10__** %13, align 8
  %134 = load i64, i64* %17, align 8
  %135 = load %struct.TYPE_10__*, %struct.TYPE_10__** %13, align 8
  %136 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %135, i32 0, i32 2
  %137 = load i64, i64* %136, align 8
  %138 = sub i64 %134, %137
  %139 = load %struct.TYPE_10__*, %struct.TYPE_10__** %13, align 8
  %140 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %139, i32 0, i32 1
  store i64 %138, i64* %140, align 8
  %141 = load %struct.TYPE_10__*, %struct.TYPE_10__** %13, align 8
  %142 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %141, i32 0, i32 4
  %143 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %142, i32 0, i32 0
  %144 = load i64, i64* %143, align 8
  %145 = load %struct.TYPE_10__*, %struct.TYPE_10__** %13, align 8
  %146 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %145, i32 0, i32 1
  %147 = load i64, i64* %146, align 8
  %148 = icmp slt i64 %144, %147
  br i1 %148, label %149, label %170

149:                                              ; preds = %126
  %150 = load %struct.TYPE_10__*, %struct.TYPE_10__** %13, align 8
  %151 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %150, i32 0, i32 1
  %152 = load i64, i64* %151, align 8
  %153 = load %struct.TYPE_11__*, %struct.TYPE_11__** %11, align 8
  %154 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %153, i32 0, i32 1
  %155 = load i32, i32* %154, align 8
  %156 = call i64 @ROUND_UP(i64 %152, i32 %155)
  %157 = load %struct.TYPE_10__*, %struct.TYPE_10__** %13, align 8
  %158 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %157, i32 0, i32 4
  %159 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %158, i32 0, i32 0
  store i64 %156, i64* %159, align 8
  %160 = load %struct.TYPE_10__*, %struct.TYPE_10__** %13, align 8
  %161 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %160, i32 0, i32 3
  %162 = load i64, i64* %161, align 8
  %163 = load %struct.TYPE_10__*, %struct.TYPE_10__** %13, align 8
  %164 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %163, i32 0, i32 4
  %165 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %164, i32 0, i32 0
  %166 = load i64, i64* %165, align 8
  %167 = add nsw i64 %162, %166
  %168 = load %struct.TYPE_11__*, %struct.TYPE_11__** %11, align 8
  %169 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %168, i32 0, i32 0
  store i64 %167, i64* %169, align 8
  br label %170

170:                                              ; preds = %149, %126
  %171 = load i8*, i8** %15, align 8
  %172 = call i32* @fopen(i8* %171, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0))
  store i32* %172, i32** %16, align 8
  %173 = load i32*, i32** %16, align 8
  %174 = icmp eq i32* %173, null
  br i1 %174, label %175, label %180

175:                                              ; preds = %170
  %176 = call i32 @perror(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.4, i64 0, i64 0))
  %177 = load i8*, i8** %18, align 8
  %178 = call i32 @free(i8* %177)
  %179 = call i32 @exit(i32 1) #4
  unreachable

180:                                              ; preds = %170
  %181 = load i8*, i8** %18, align 8
  %182 = load i64, i64* %17, align 8
  %183 = load i32*, i32** %16, align 8
  %184 = call i32 @fwrite(i8* %181, i32 1, i64 %182, i32* %183)
  %185 = load i32*, i32** %16, align 8
  %186 = call i32 @fclose(i32* %185)
  %187 = load i8*, i8** %18, align 8
  %188 = call i32 @free(i8* %187)
  ret i32 0
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @fprintf(i32, i8*, ...) #2

; Function Attrs: noreturn
declare dso_local i32 @exit(i32) #3

declare dso_local i8* @convert_path(i8*) #2

declare dso_local i8* @load_file(i8*, i64*) #2

declare dso_local i32 @memcmp(%struct.TYPE_14__*, i8*, i32) #2

declare dso_local i32 @perror(i8*) #2

declare dso_local i32 @free(i8*) #2

declare dso_local i64 @IsDebugSection(%struct.TYPE_10__*) #2

declare dso_local i64 @ROUND_UP(i64, i32) #2

declare dso_local i32* @fopen(i8*, i8*) #2

declare dso_local i32 @fwrite(i8*, i32, i64, i32*) #2

declare dso_local i32 @fclose(i32*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
