; ModuleID = '/home/carl/AnghaBench/zstd/lib/legacy/extr_zstd_v05.c_ZSTDv05_loadEntropy.c'
source_filename = "/home/carl/AnghaBench/zstd/lib/legacy/extr_zstd_v05.c_ZSTDv05_loadEntropy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32, i32, i32, i32 }

@MaxOff = common dso_local global i32 0, align 4
@MaxML = common dso_local global i32 0, align 4
@MaxLL = common dso_local global i32 0, align 4
@dictionary_corrupted = common dso_local global i32 0, align 4
@OffFSEv05Log = common dso_local global i32 0, align 4
@MLFSEv05Log = common dso_local global i32 0, align 4
@LLFSEv05Log = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.TYPE_3__*, i8*, i64)* @ZSTDv05_loadEntropy to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @ZSTDv05_loadEntropy(%struct.TYPE_3__* %0, i8* %1, i64 %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca %struct.TYPE_3__*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i64, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i64, align 8
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i64, align 8
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %5, align 8
  store i8* %1, i8** %6, align 8
  store i64 %2, i64* %7, align 8
  %24 = load i32, i32* @MaxOff, align 4
  %25 = add nsw i32 %24, 1
  %26 = zext i32 %25 to i64
  %27 = call i8* @llvm.stacksave()
  store i8* %27, i8** %13, align 8
  %28 = alloca i16, i64 %26, align 16
  store i64 %26, i64* %14, align 8
  %29 = load i32, i32* @MaxOff, align 4
  store i32 %29, i32* %15, align 4
  %30 = load i32, i32* @MaxML, align 4
  %31 = add nsw i32 %30, 1
  %32 = zext i32 %31 to i64
  %33 = alloca i16, i64 %32, align 16
  store i64 %32, i64* %17, align 8
  %34 = load i32, i32* @MaxML, align 4
  store i32 %34, i32* %18, align 4
  %35 = load i32, i32* @MaxLL, align 4
  %36 = add nsw i32 %35, 1
  %37 = zext i32 %36 to i64
  %38 = alloca i16, i64 %37, align 16
  store i64 %37, i64* %20, align 8
  %39 = load i32, i32* @MaxLL, align 4
  store i32 %39, i32* %21, align 4
  %40 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %41 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %40, i32 0, i32 4
  %42 = load i32, i32* %41, align 4
  %43 = load i8*, i8** %6, align 8
  %44 = load i64, i64* %7, align 8
  %45 = call i64 @HUFv05_readDTableX4(i32 %42, i8* %43, i64 %44)
  store i64 %45, i64* %8, align 8
  %46 = load i64, i64* %8, align 8
  %47 = call i64 @HUFv05_isError(i64 %46)
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %52

49:                                               ; preds = %3
  %50 = load i32, i32* @dictionary_corrupted, align 4
  %51 = call i64 @ERROR(i32 %50)
  store i64 %51, i64* %4, align 8
  store i32 1, i32* %23, align 4
  br label %170

52:                                               ; preds = %3
  %53 = load i8*, i8** %6, align 8
  %54 = load i64, i64* %8, align 8
  %55 = getelementptr inbounds i8, i8* %53, i64 %54
  store i8* %55, i8** %6, align 8
  %56 = load i64, i64* %8, align 8
  %57 = load i64, i64* %7, align 8
  %58 = sub i64 %57, %56
  store i64 %58, i64* %7, align 8
  %59 = load i8*, i8** %6, align 8
  %60 = load i64, i64* %7, align 8
  %61 = call i64 @FSEv05_readNCount(i16* %28, i32* %15, i32* %16, i8* %59, i64 %60)
  store i64 %61, i64* %9, align 8
  %62 = load i64, i64* %9, align 8
  %63 = call i64 @FSEv05_isError(i64 %62)
  %64 = icmp ne i64 %63, 0
  br i1 %64, label %65, label %68

65:                                               ; preds = %52
  %66 = load i32, i32* @dictionary_corrupted, align 4
  %67 = call i64 @ERROR(i32 %66)
  store i64 %67, i64* %4, align 8
  store i32 1, i32* %23, align 4
  br label %170

68:                                               ; preds = %52
  %69 = load i32, i32* %16, align 4
  %70 = load i32, i32* @OffFSEv05Log, align 4
  %71 = icmp ugt i32 %69, %70
  br i1 %71, label %72, label %75

72:                                               ; preds = %68
  %73 = load i32, i32* @dictionary_corrupted, align 4
  %74 = call i64 @ERROR(i32 %73)
  store i64 %74, i64* %4, align 8
  store i32 1, i32* %23, align 4
  br label %170

75:                                               ; preds = %68
  %76 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %77 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %76, i32 0, i32 3
  %78 = load i32, i32* %77, align 4
  %79 = load i32, i32* %15, align 4
  %80 = load i32, i32* %16, align 4
  %81 = call i64 @FSEv05_buildDTable(i32 %78, i16* %28, i32 %79, i32 %80)
  store i64 %81, i64* %11, align 8
  %82 = load i64, i64* %11, align 8
  %83 = call i64 @FSEv05_isError(i64 %82)
  %84 = icmp ne i64 %83, 0
  br i1 %84, label %85, label %88

85:                                               ; preds = %75
  %86 = load i32, i32* @dictionary_corrupted, align 4
  %87 = call i64 @ERROR(i32 %86)
  store i64 %87, i64* %4, align 8
  store i32 1, i32* %23, align 4
  br label %170

88:                                               ; preds = %75
  %89 = load i8*, i8** %6, align 8
  %90 = load i64, i64* %9, align 8
  %91 = getelementptr inbounds i8, i8* %89, i64 %90
  store i8* %91, i8** %6, align 8
  %92 = load i64, i64* %9, align 8
  %93 = load i64, i64* %7, align 8
  %94 = sub i64 %93, %92
  store i64 %94, i64* %7, align 8
  %95 = load i8*, i8** %6, align 8
  %96 = load i64, i64* %7, align 8
  %97 = call i64 @FSEv05_readNCount(i16* %33, i32* %18, i32* %19, i8* %95, i64 %96)
  store i64 %97, i64* %10, align 8
  %98 = load i64, i64* %10, align 8
  %99 = call i64 @FSEv05_isError(i64 %98)
  %100 = icmp ne i64 %99, 0
  br i1 %100, label %101, label %104

101:                                              ; preds = %88
  %102 = load i32, i32* @dictionary_corrupted, align 4
  %103 = call i64 @ERROR(i32 %102)
  store i64 %103, i64* %4, align 8
  store i32 1, i32* %23, align 4
  br label %170

104:                                              ; preds = %88
  %105 = load i32, i32* %19, align 4
  %106 = load i32, i32* @MLFSEv05Log, align 4
  %107 = icmp ugt i32 %105, %106
  br i1 %107, label %108, label %111

108:                                              ; preds = %104
  %109 = load i32, i32* @dictionary_corrupted, align 4
  %110 = call i64 @ERROR(i32 %109)
  store i64 %110, i64* %4, align 8
  store i32 1, i32* %23, align 4
  br label %170

111:                                              ; preds = %104
  %112 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %113 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %112, i32 0, i32 2
  %114 = load i32, i32* %113, align 4
  %115 = load i32, i32* %18, align 4
  %116 = load i32, i32* %19, align 4
  %117 = call i64 @FSEv05_buildDTable(i32 %114, i16* %33, i32 %115, i32 %116)
  store i64 %117, i64* %11, align 8
  %118 = load i64, i64* %11, align 8
  %119 = call i64 @FSEv05_isError(i64 %118)
  %120 = icmp ne i64 %119, 0
  br i1 %120, label %121, label %124

121:                                              ; preds = %111
  %122 = load i32, i32* @dictionary_corrupted, align 4
  %123 = call i64 @ERROR(i32 %122)
  store i64 %123, i64* %4, align 8
  store i32 1, i32* %23, align 4
  br label %170

124:                                              ; preds = %111
  %125 = load i8*, i8** %6, align 8
  %126 = load i64, i64* %10, align 8
  %127 = getelementptr inbounds i8, i8* %125, i64 %126
  store i8* %127, i8** %6, align 8
  %128 = load i64, i64* %10, align 8
  %129 = load i64, i64* %7, align 8
  %130 = sub i64 %129, %128
  store i64 %130, i64* %7, align 8
  %131 = load i8*, i8** %6, align 8
  %132 = load i64, i64* %7, align 8
  %133 = call i64 @FSEv05_readNCount(i16* %38, i32* %21, i32* %22, i8* %131, i64 %132)
  store i64 %133, i64* %12, align 8
  %134 = load i32, i32* %22, align 4
  %135 = load i32, i32* @LLFSEv05Log, align 4
  %136 = icmp ugt i32 %134, %135
  br i1 %136, label %137, label %140

137:                                              ; preds = %124
  %138 = load i32, i32* @dictionary_corrupted, align 4
  %139 = call i64 @ERROR(i32 %138)
  store i64 %139, i64* %4, align 8
  store i32 1, i32* %23, align 4
  br label %170

140:                                              ; preds = %124
  %141 = load i64, i64* %12, align 8
  %142 = call i64 @FSEv05_isError(i64 %141)
  %143 = icmp ne i64 %142, 0
  br i1 %143, label %144, label %147

144:                                              ; preds = %140
  %145 = load i32, i32* @dictionary_corrupted, align 4
  %146 = call i64 @ERROR(i32 %145)
  store i64 %146, i64* %4, align 8
  store i32 1, i32* %23, align 4
  br label %170

147:                                              ; preds = %140
  %148 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %149 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %148, i32 0, i32 1
  %150 = load i32, i32* %149, align 4
  %151 = load i32, i32* %21, align 4
  %152 = load i32, i32* %22, align 4
  %153 = call i64 @FSEv05_buildDTable(i32 %150, i16* %38, i32 %151, i32 %152)
  store i64 %153, i64* %11, align 8
  %154 = load i64, i64* %11, align 8
  %155 = call i64 @FSEv05_isError(i64 %154)
  %156 = icmp ne i64 %155, 0
  br i1 %156, label %157, label %160

157:                                              ; preds = %147
  %158 = load i32, i32* @dictionary_corrupted, align 4
  %159 = call i64 @ERROR(i32 %158)
  store i64 %159, i64* %4, align 8
  store i32 1, i32* %23, align 4
  br label %170

160:                                              ; preds = %147
  %161 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %162 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %161, i32 0, i32 0
  store i32 1, i32* %162, align 4
  %163 = load i64, i64* %8, align 8
  %164 = load i64, i64* %9, align 8
  %165 = add i64 %163, %164
  %166 = load i64, i64* %10, align 8
  %167 = add i64 %165, %166
  %168 = load i64, i64* %12, align 8
  %169 = add i64 %167, %168
  store i64 %169, i64* %4, align 8
  store i32 1, i32* %23, align 4
  br label %170

170:                                              ; preds = %160, %157, %144, %137, %121, %108, %101, %85, %72, %65, %49
  %171 = load i8*, i8** %13, align 8
  call void @llvm.stackrestore(i8* %171)
  %172 = load i64, i64* %4, align 8
  ret i64 %172
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i64 @HUFv05_readDTableX4(i32, i8*, i64) #2

declare dso_local i64 @HUFv05_isError(i64) #2

declare dso_local i64 @ERROR(i32) #2

declare dso_local i64 @FSEv05_readNCount(i16*, i32*, i32*, i8*, i64) #2

declare dso_local i64 @FSEv05_isError(i64) #2

declare dso_local i64 @FSEv05_buildDTable(i32, i16*, i32, i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
