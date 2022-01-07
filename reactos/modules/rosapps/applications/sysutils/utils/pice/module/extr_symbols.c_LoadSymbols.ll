; ModuleID = '/home/carl/AnghaBench/reactos/modules/rosapps/applications/sysutils/utils/pice/module/extr_symbols.c_LoadSymbols.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rosapps/applications/sysutils/utils/pice/module/extr_symbols.c_LoadSymbols.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i64, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }

@CP_ACP = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [28 x i8] c"Can't convert module name.\0A\00", align 1
@.str.1 = private unnamed_addr constant [48 x i8] c"LoadSymbols: filename %s, tempstr %S, conv: %d\0A\00", align 1
@ulNumSymbolsLoaded = common dso_local global i64 0, align 8
@apSymbols = common dso_local global %struct.TYPE_7__** null, align 8
@OF_READ = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [31 x i8] c"LoadSymbols: hf: %x, file: %S\0A\00", align 1
@.str.3 = private unnamed_addr constant [9 x i8] c"hf = %x\0A\00", align 1
@.str.4 = private unnamed_addr constant [15 x i8] c"file len = %d\0A\00", align 1
@NONPAGEDPOOL = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [15 x i8] c"pSymbols = %x\0A\00", align 1
@.str.6 = private unnamed_addr constant [41 x i8] c"LoadSymbols(): success reading symbols!\0A\00", align 1
@.str.7 = private unnamed_addr constant [37 x i8] c"LoadSymbols(): pSymbols->magic = %X\0A\00", align 1
@PICE_MAGIC = common dso_local global i64 0, align 8
@.str.8 = private unnamed_addr constant [12 x i8] c"magic = %X\0A\00", align 1
@.str.9 = private unnamed_addr constant [11 x i8] c"name = %S\0A\00", align 1
@.str.10 = private unnamed_addr constant [42 x i8] c"ulOffsetToHeaders,ulSizeOfHeader = %X,%X\0A\00", align 1
@.str.11 = private unnamed_addr constant [43 x i8] c"ulOffsetToGlobals,ulSizeOfGlobals = %X,%X\0A\00", align 1
@.str.12 = private unnamed_addr constant [57 x i8] c"ulOffsetToGlobalsStrings,ulSizeOfGlobalsStrings = %X,%X\0A\00", align 1
@.str.13 = private unnamed_addr constant [39 x i8] c"ulOffsetToStabs,ulSizeOfStabs = %X,%X\0A\00", align 1
@.str.14 = private unnamed_addr constant [53 x i8] c"ulOffsetToStabsStrings,ulSizeOfStabsStrings = %X,%X\0A\00", align 1
@.str.15 = private unnamed_addr constant [47 x i8] c"ulOffsetToSrcFiles,ulNumberOfSrcFiles = %X,%X\0A\00", align 1
@.str.16 = private unnamed_addr constant [43 x i8] c"pICE: symbols loaded for module \22%S\22 @ %x\0A\00", align 1
@.str.17 = private unnamed_addr constant [27 x i8] c"LoadSymbols(): freeing %x\0A\00", align 1
@.str.18 = private unnamed_addr constant [33 x i8] c"pICE: symbols file \22%s\22 corrupt\0A\00", align 1
@.str.19 = private unnamed_addr constant [40 x i8] c"pICE: could not load symbols for %s...\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.TYPE_7__* @LoadSymbols(i32 %0) #0 {
  %2 = alloca %struct.TYPE_7__*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i64, align 8
  %5 = alloca %struct.TYPE_7__*, align 8
  %6 = alloca [256 x i32], align 16
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  store i32 %0, i32* %3, align 4
  store %struct.TYPE_7__* null, %struct.TYPE_7__** %5, align 8
  %9 = call i32 (...) @ENTER_FUNC()
  %10 = load i32, i32* @CP_ACP, align 4
  %11 = load i32, i32* %3, align 4
  %12 = getelementptr inbounds [256 x i32], [256 x i32]* %6, i64 0, i64 0
  %13 = call i32 @PICE_MultiByteToWideChar(i32 %10, i32* null, i32 %11, i32 -1, i32* %12, i32 256)
  store i32 %13, i32* %7, align 4
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %17, label %15

15:                                               ; preds = %1
  %16 = call i32 @DPRINT(i32 ptrtoint ([28 x i8]* @.str to i32))
  store %struct.TYPE_7__* null, %struct.TYPE_7__** %2, align 8
  br label %161

17:                                               ; preds = %1
  %18 = load i32, i32* %3, align 4
  %19 = getelementptr inbounds [256 x i32], [256 x i32]* %6, i64 0, i64 0
  %20 = load i32, i32* %7, align 4
  %21 = call i32 @DPRINT(i32 %20)
  %22 = load i64, i64* @ulNumSymbolsLoaded, align 8
  %23 = load %struct.TYPE_7__**, %struct.TYPE_7__*** @apSymbols, align 8
  %24 = call i64 @DIM(%struct.TYPE_7__** %23)
  %25 = icmp slt i64 %22, %24
  br i1 %25, label %26, label %158

26:                                               ; preds = %17
  %27 = getelementptr inbounds [256 x i32], [256 x i32]* %6, i64 0, i64 0
  %28 = load i32, i32* @OF_READ, align 4
  %29 = call i64 @PICE_open(i32* %27, i32 %28)
  store i64 %29, i64* %4, align 8
  %30 = load i64, i64* %4, align 8
  %31 = getelementptr inbounds [256 x i32], [256 x i32]* %6, i64 0, i64 0
  %32 = ptrtoint i32* %31 to i32
  %33 = call i32 @DPRINT(i32 %32)
  %34 = load i64, i64* %4, align 8
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %154

36:                                               ; preds = %26
  %37 = load i64, i64* %4, align 8
  %38 = trunc i64 %37 to i32
  %39 = call i32 @DPRINT(i32 %38)
  %40 = load i64, i64* %4, align 8
  %41 = call i64 @PICE_len(i64 %40)
  store i64 %41, i64* %8, align 8
  %42 = load i64, i64* %8, align 8
  %43 = trunc i64 %42 to i32
  %44 = call i32 @DPRINT(i32 %43)
  %45 = load i64, i64* %8, align 8
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %151

47:                                               ; preds = %36
  %48 = load i64, i64* %8, align 8
  %49 = add i64 %48, 1
  %50 = load i32, i32* @NONPAGEDPOOL, align 4
  %51 = call %struct.TYPE_7__* @PICE_malloc(i64 %49, i32 %50)
  store %struct.TYPE_7__* %51, %struct.TYPE_7__** %5, align 8
  %52 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %53 = ptrtoint %struct.TYPE_7__* %52 to i32
  %54 = call i32 @DPRINT(i32 %53)
  %55 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %56 = icmp ne %struct.TYPE_7__* %55, null
  br i1 %56, label %57, label %150

57:                                               ; preds = %47
  %58 = load i64, i64* %8, align 8
  %59 = load i64, i64* %4, align 8
  %60 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %61 = ptrtoint %struct.TYPE_7__* %60 to i32
  %62 = load i64, i64* %8, align 8
  %63 = call i64 @PICE_read(i64 %59, i32 %61, i64 %62)
  %64 = icmp eq i64 %58, %63
  br i1 %64, label %65, label %72

65:                                               ; preds = %57
  %66 = call i32 @DPRINT(i32 ptrtoint ([41 x i8]* @.str.6 to i32))
  %67 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %68 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %67, i32 0, i32 0
  %69 = load i64, i64* %68, align 8
  %70 = trunc i64 %69 to i32
  %71 = call i32 @DPRINT(i32 %70)
  br label %72

72:                                               ; preds = %65, %57
  %73 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %74 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %73, i32 0, i32 0
  %75 = load i64, i64* %74, align 8
  %76 = load i64, i64* @PICE_MAGIC, align 8
  %77 = icmp eq i64 %75, %76
  br i1 %77, label %78, label %141

78:                                               ; preds = %72
  %79 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %80 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %79, i32 0, i32 0
  %81 = load i64, i64* %80, align 8
  %82 = trunc i64 %81 to i32
  %83 = call i32 @DPRINT(i32 %82)
  %84 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %85 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %84, i32 0, i32 1
  %86 = load i32, i32* %85, align 8
  %87 = call i32 @DPRINT(i32 %86)
  %88 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %89 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %88, i32 0, i32 13
  %90 = load i32, i32* %89, align 8
  %91 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %92 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %91, i32 0, i32 12
  %93 = load i32, i32* %92, align 4
  %94 = call i32 @DPRINT(i32 %93)
  %95 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %96 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %95, i32 0, i32 11
  %97 = load i32, i32* %96, align 8
  %98 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %99 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %98, i32 0, i32 10
  %100 = load i32, i32* %99, align 4
  %101 = call i32 @DPRINT(i32 %100)
  %102 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %103 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %102, i32 0, i32 9
  %104 = load i32, i32* %103, align 8
  %105 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %106 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %105, i32 0, i32 8
  %107 = load i32, i32* %106, align 4
  %108 = call i32 @DPRINT(i32 %107)
  %109 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %110 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %109, i32 0, i32 7
  %111 = load i32, i32* %110, align 8
  %112 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %113 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %112, i32 0, i32 6
  %114 = load i32, i32* %113, align 4
  %115 = call i32 @DPRINT(i32 %114)
  %116 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %117 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %116, i32 0, i32 5
  %118 = load i32, i32* %117, align 8
  %119 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %120 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %119, i32 0, i32 4
  %121 = load i32, i32* %120, align 4
  %122 = call i32 @DPRINT(i32 %121)
  %123 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %124 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %123, i32 0, i32 3
  %125 = load i32, i32* %124, align 8
  %126 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %127 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %126, i32 0, i32 2
  %128 = load i32, i32* %127, align 4
  %129 = call i32 @DPRINT(i32 %128)
  %130 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %131 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %130, i32 0, i32 1
  %132 = load i32, i32* %131, align 8
  %133 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %134 = ptrtoint %struct.TYPE_7__* %133 to i32
  %135 = call i32 @DPRINT(i32 %134)
  %136 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %137 = load %struct.TYPE_7__**, %struct.TYPE_7__*** @apSymbols, align 8
  %138 = load i64, i64* @ulNumSymbolsLoaded, align 8
  %139 = add nsw i64 %138, 1
  store i64 %139, i64* @ulNumSymbolsLoaded, align 8
  %140 = getelementptr inbounds %struct.TYPE_7__*, %struct.TYPE_7__** %137, i64 %138
  store %struct.TYPE_7__* %136, %struct.TYPE_7__** %140, align 8
  br label %149

141:                                              ; preds = %72
  %142 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %143 = ptrtoint %struct.TYPE_7__* %142 to i32
  %144 = call i32 @DPRINT(i32 %143)
  %145 = load i32, i32* %3, align 4
  %146 = call i32 @DPRINT(i32 %145)
  %147 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %148 = call i32 @PICE_free(%struct.TYPE_7__* %147)
  br label %149

149:                                              ; preds = %141, %78
  br label %150

150:                                              ; preds = %149, %47
  br label %151

151:                                              ; preds = %150, %36
  %152 = load i64, i64* %4, align 8
  %153 = call i32 @PICE_close(i64 %152)
  br label %157

154:                                              ; preds = %26
  %155 = load i32, i32* %3, align 4
  %156 = call i32 @DPRINT(i32 %155)
  br label %157

157:                                              ; preds = %154, %151
  br label %158

158:                                              ; preds = %157, %17
  %159 = call i32 (...) @LEAVE_FUNC()
  %160 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  store %struct.TYPE_7__* %160, %struct.TYPE_7__** %2, align 8
  br label %161

161:                                              ; preds = %158, %15
  %162 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  ret %struct.TYPE_7__* %162
}

declare dso_local i32 @ENTER_FUNC(...) #1

declare dso_local i32 @PICE_MultiByteToWideChar(i32, i32*, i32, i32, i32*, i32) #1

declare dso_local i32 @DPRINT(i32) #1

declare dso_local i64 @DIM(%struct.TYPE_7__**) #1

declare dso_local i64 @PICE_open(i32*, i32) #1

declare dso_local i64 @PICE_len(i64) #1

declare dso_local %struct.TYPE_7__* @PICE_malloc(i64, i32) #1

declare dso_local i64 @PICE_read(i64, i32, i64) #1

declare dso_local i32 @PICE_free(%struct.TYPE_7__*) #1

declare dso_local i32 @PICE_close(i64) #1

declare dso_local i32 @LEAVE_FUNC(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
