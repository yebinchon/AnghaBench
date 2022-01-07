; ModuleID = '/home/carl/AnghaBench/reactos/modules/rosapps/applications/devutils/shimdbg/extr_shimdbg.c_main.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rosapps/applications/devutils/shimdbg/extr_shimdbg.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [2 x i8] c"d\00", align 1
@.str.1 = private unnamed_addr constant [33 x i8] c"Calling ApphelpCacheServiceDump\0A\00", align 1
@ApphelpCacheServiceDump = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [2 x i8] c"h\00", align 1
@.str.3 = private unnamed_addr constant [2 x i8] c"f\00", align 1
@.str.4 = private unnamed_addr constant [34 x i8] c"Calling ApphelpCacheServiceFlush\0A\00", align 1
@ApphelpCacheServiceFlush = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [2 x i8] c"z\00", align 1
@.str.6 = private unnamed_addr constant [32 x i8] c"Calling ApphelpDBGReadRegistry\0A\00", align 1
@ApphelpDBGReadRegistry = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [2 x i8] c"x\00", align 1
@.str.8 = private unnamed_addr constant [33 x i8] c"Calling ApphelpDBGWriteRegistry\0A\00", align 1
@ApphelpDBGWriteRegistry = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [2 x i8] c"l\00", align 1
@ApphelpCacheServiceLookup = common dso_local global i32 0, align 4
@.str.10 = private unnamed_addr constant [26 x i8] c"ApphelpCacheServiceLookup\00", align 1
@.str.11 = private unnamed_addr constant [2 x i8] c"u\00", align 1
@ApphelpCacheServiceUpdate = common dso_local global i32 0, align 4
@.str.12 = private unnamed_addr constant [26 x i8] c"ApphelpCacheServiceUpdate\00", align 1
@.str.13 = private unnamed_addr constant [2 x i8] c"r\00", align 1
@ApphelpCacheServiceRemove = common dso_local global i32 0, align 4
@.str.14 = private unnamed_addr constant [26 x i8] c"ApphelpCacheServiceRemove\00", align 1
@.str.15 = private unnamed_addr constant [2 x i8] c"a\00", align 1
@.str.16 = private unnamed_addr constant [2 x i8] c"k\00", align 1
@.str.17 = private unnamed_addr constant [79 x i8] c"Usage: %s [-d|-z|-x|-h|-H|-f|-[l|L] <image>|-[u|U] <image>|-[r|R] <image>|-k]\0A\00", align 1
@.str.18 = private unnamed_addr constant [50 x i8] c"           -d: Dump shim cache over debug output\0A\00", align 1
@.str.19 = private unnamed_addr constant [52 x i8] c"           -z: DEBUG Read shim cache from registry\0A\00", align 1
@.str.20 = private unnamed_addr constant [51 x i8] c"           -x: DEBUG Write shim cache to registry\0A\00", align 1
@.str.21 = private unnamed_addr constant [42 x i8] c"           -h: Hexdump shim registry key\0A\00", align 1
@.str.22 = private unnamed_addr constant [57 x i8] c"           -H: Crc + Length from shim registry key only\0A\00", align 1
@.str.23 = private unnamed_addr constant [45 x i8] c"           -f: Flush (clear) the shim cache\0A\00", align 1
@.str.24 = private unnamed_addr constant [49 x i8] c"           -l: Lookup <image> in the shim cache\0A\00", align 1
@.str.25 = private unnamed_addr constant [68 x i8] c"           -L: Lookup <image> in the shim cache without mapping it\0A\00", align 1
@.str.26 = private unnamed_addr constant [58 x i8] c"           -u: Update (insert) <image> in the shim cache\0A\00", align 1
@.str.27 = private unnamed_addr constant [77 x i8] c"           -U: Update (insert) <image> in the shim cache without mapping it\0A\00", align 1
@.str.28 = private unnamed_addr constant [51 x i8] c"           -r: Remove <image> from the shim cache\0A\00", align 1
@.str.29 = private unnamed_addr constant [70 x i8] c"           -R: Remove <image> from the shim cache without mapping it\0A\00", align 1
@.str.30 = private unnamed_addr constant [71 x i8] c"           -a: Dump file attributes as used in the appcompat database\0A\00", align 1
@.str.31 = private unnamed_addr constant [38 x i8] c"           -k: Keep the console open\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  store i32 0, i32* %7, align 4
  store i32 0, i32* %8, align 4
  store i32 1, i32* %6, align 4
  br label %10

10:                                               ; preds = %122, %2
  %11 = load i32, i32* %6, align 4
  %12 = load i32, i32* %4, align 4
  %13 = icmp slt i32 %11, %12
  br i1 %13, label %14, label %125

14:                                               ; preds = %10
  %15 = load i8**, i8*** %5, align 8
  %16 = load i32, i32* %6, align 4
  %17 = sext i32 %16 to i64
  %18 = getelementptr inbounds i8*, i8** %15, i64 %17
  %19 = load i8*, i8** %18, align 8
  store i8* %19, i8** %9, align 8
  %20 = load i8*, i8** %9, align 8
  %21 = call i64 @IsOpt(i8* %20, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %27

23:                                               ; preds = %14
  %24 = call i32 (i8*, ...) @xprintf(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.1, i64 0, i64 0))
  %25 = load i32, i32* @ApphelpCacheServiceDump, align 4
  %26 = call i32 @CallApphelp(i32 %25, i32* null)
  store i32 0, i32* %7, align 4
  br label %121

27:                                               ; preds = %14
  %28 = load i8*, i8** %9, align 8
  %29 = call i64 @IsOpt(i8* %28, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0))
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %39

31:                                               ; preds = %27
  %32 = load i8*, i8** %9, align 8
  %33 = getelementptr inbounds i8, i8* %32, i64 1
  %34 = load i8, i8* %33, align 1
  %35 = sext i8 %34 to i32
  %36 = icmp eq i32 %35, 104
  %37 = zext i1 %36 to i32
  %38 = call i32 @DumpRegistryData(i32 %37)
  store i32 0, i32* %7, align 4
  br label %120

39:                                               ; preds = %27
  %40 = load i8*, i8** %9, align 8
  %41 = call i64 @IsOpt(i8* %40, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0))
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %47

43:                                               ; preds = %39
  %44 = call i32 (i8*, ...) @xprintf(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.4, i64 0, i64 0))
  %45 = load i32, i32* @ApphelpCacheServiceFlush, align 4
  %46 = call i32 @CallApphelp(i32 %45, i32* null)
  store i32 0, i32* %7, align 4
  br label %119

47:                                               ; preds = %39
  %48 = load i8*, i8** %9, align 8
  %49 = call i64 @IsOpt(i8* %48, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5, i64 0, i64 0))
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %51, label %55

51:                                               ; preds = %47
  %52 = call i32 (i8*, ...) @xprintf(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.6, i64 0, i64 0))
  %53 = load i32, i32* @ApphelpDBGReadRegistry, align 4
  %54 = call i32 @CallApphelp(i32 %53, i32* null)
  store i32 0, i32* %7, align 4
  br label %118

55:                                               ; preds = %47
  %56 = load i8*, i8** %9, align 8
  %57 = call i64 @IsOpt(i8* %56, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.7, i64 0, i64 0))
  %58 = icmp ne i64 %57, 0
  br i1 %58, label %59, label %63

59:                                               ; preds = %55
  %60 = call i32 (i8*, ...) @xprintf(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.8, i64 0, i64 0))
  %61 = load i32, i32* @ApphelpDBGWriteRegistry, align 4
  %62 = call i32 @CallApphelp(i32 %61, i32* null)
  store i32 0, i32* %7, align 4
  br label %117

63:                                               ; preds = %55
  %64 = load i8*, i8** %9, align 8
  %65 = call i64 @IsOpt(i8* %64, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.9, i64 0, i64 0))
  %66 = icmp ne i64 %65, 0
  br i1 %66, label %67, label %74

67:                                               ; preds = %63
  %68 = load i32, i32* %4, align 4
  %69 = load i8**, i8*** %5, align 8
  %70 = load i32, i32* @ApphelpCacheServiceLookup, align 4
  %71 = call i32 @HandleImageArg(i32 %68, i8** %69, i32* %6, i8 signext 108, i32 %70, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.10, i64 0, i64 0))
  %72 = load i32, i32* %7, align 4
  %73 = or i32 %72, %71
  store i32 %73, i32* %7, align 4
  br label %116

74:                                               ; preds = %63
  %75 = load i8*, i8** %9, align 8
  %76 = call i64 @IsOpt(i8* %75, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.11, i64 0, i64 0))
  %77 = icmp ne i64 %76, 0
  br i1 %77, label %78, label %85

78:                                               ; preds = %74
  %79 = load i32, i32* %4, align 4
  %80 = load i8**, i8*** %5, align 8
  %81 = load i32, i32* @ApphelpCacheServiceUpdate, align 4
  %82 = call i32 @HandleImageArg(i32 %79, i8** %80, i32* %6, i8 signext 117, i32 %81, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.12, i64 0, i64 0))
  %83 = load i32, i32* %7, align 4
  %84 = or i32 %83, %82
  store i32 %84, i32* %7, align 4
  br label %115

85:                                               ; preds = %74
  %86 = load i8*, i8** %9, align 8
  %87 = call i64 @IsOpt(i8* %86, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.13, i64 0, i64 0))
  %88 = icmp ne i64 %87, 0
  br i1 %88, label %89, label %96

89:                                               ; preds = %85
  %90 = load i32, i32* %4, align 4
  %91 = load i8**, i8*** %5, align 8
  %92 = load i32, i32* @ApphelpCacheServiceRemove, align 4
  %93 = call i32 @HandleImageArg(i32 %90, i8** %91, i32* %6, i8 signext 114, i32 %92, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.14, i64 0, i64 0))
  %94 = load i32, i32* %7, align 4
  %95 = or i32 %94, %93
  store i32 %95, i32* %7, align 4
  br label %114

96:                                               ; preds = %85
  %97 = load i8*, i8** %9, align 8
  %98 = call i64 @IsOpt(i8* %97, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.15, i64 0, i64 0))
  %99 = icmp ne i64 %98, 0
  br i1 %99, label %100, label %106

100:                                              ; preds = %96
  %101 = load i32, i32* %4, align 4
  %102 = load i8**, i8*** %5, align 8
  %103 = call i32 @HandleDumpAttributes(i32 %101, i8** %102, i32* %6, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.15, i64 0, i64 0))
  %104 = load i32, i32* %7, align 4
  %105 = or i32 %104, %103
  store i32 %105, i32* %7, align 4
  br label %113

106:                                              ; preds = %96
  %107 = load i8*, i8** %9, align 8
  %108 = call i64 @IsOpt(i8* %107, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.16, i64 0, i64 0))
  %109 = icmp ne i64 %108, 0
  br i1 %109, label %110, label %111

110:                                              ; preds = %106
  store i32 1, i32* %8, align 4
  br label %112

111:                                              ; preds = %106
  store i32 1, i32* %7, align 4
  br label %112

112:                                              ; preds = %111, %110
  br label %113

113:                                              ; preds = %112, %100
  br label %114

114:                                              ; preds = %113, %89
  br label %115

115:                                              ; preds = %114, %78
  br label %116

116:                                              ; preds = %115, %67
  br label %117

117:                                              ; preds = %116, %59
  br label %118

118:                                              ; preds = %117, %51
  br label %119

119:                                              ; preds = %118, %43
  br label %120

120:                                              ; preds = %119, %31
  br label %121

121:                                              ; preds = %120, %23
  br label %122

122:                                              ; preds = %121
  %123 = load i32, i32* %6, align 4
  %124 = add nsw i32 %123, 1
  store i32 %124, i32* %6, align 4
  br label %10

125:                                              ; preds = %10
  %126 = load i32, i32* %7, align 4
  %127 = icmp ne i32 %126, 0
  br i1 %127, label %131, label %128

128:                                              ; preds = %125
  %129 = load i32, i32* %4, align 4
  %130 = icmp eq i32 %129, 1
  br i1 %130, label %131, label %150

131:                                              ; preds = %128, %125
  %132 = load i8**, i8*** %5, align 8
  %133 = getelementptr inbounds i8*, i8** %132, i64 0
  %134 = load i8*, i8** %133, align 8
  %135 = call i32 (i8*, ...) @xprintf(i8* getelementptr inbounds ([79 x i8], [79 x i8]* @.str.17, i64 0, i64 0), i8* %134)
  %136 = call i32 (i8*, ...) @xprintf(i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.18, i64 0, i64 0))
  %137 = call i32 (i8*, ...) @xprintf(i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.19, i64 0, i64 0))
  %138 = call i32 (i8*, ...) @xprintf(i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.20, i64 0, i64 0))
  %139 = call i32 (i8*, ...) @xprintf(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.21, i64 0, i64 0))
  %140 = call i32 (i8*, ...) @xprintf(i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str.22, i64 0, i64 0))
  %141 = call i32 (i8*, ...) @xprintf(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.23, i64 0, i64 0))
  %142 = call i32 (i8*, ...) @xprintf(i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.24, i64 0, i64 0))
  %143 = call i32 (i8*, ...) @xprintf(i8* getelementptr inbounds ([68 x i8], [68 x i8]* @.str.25, i64 0, i64 0))
  %144 = call i32 (i8*, ...) @xprintf(i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str.26, i64 0, i64 0))
  %145 = call i32 (i8*, ...) @xprintf(i8* getelementptr inbounds ([77 x i8], [77 x i8]* @.str.27, i64 0, i64 0))
  %146 = call i32 (i8*, ...) @xprintf(i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.28, i64 0, i64 0))
  %147 = call i32 (i8*, ...) @xprintf(i8* getelementptr inbounds ([70 x i8], [70 x i8]* @.str.29, i64 0, i64 0))
  %148 = call i32 (i8*, ...) @xprintf(i8* getelementptr inbounds ([71 x i8], [71 x i8]* @.str.30, i64 0, i64 0))
  %149 = call i32 (i8*, ...) @xprintf(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.31, i64 0, i64 0))
  br label %150

150:                                              ; preds = %131, %128
  %151 = load i32, i32* %8, align 4
  %152 = icmp ne i32 %151, 0
  br i1 %152, label %153, label %155

153:                                              ; preds = %150
  %154 = call i32 (...) @_getch()
  br label %155

155:                                              ; preds = %153, %150
  %156 = load i32, i32* %7, align 4
  ret i32 %156
}

declare dso_local i64 @IsOpt(i8*, i8*) #1

declare dso_local i32 @xprintf(i8*, ...) #1

declare dso_local i32 @CallApphelp(i32, i32*) #1

declare dso_local i32 @DumpRegistryData(i32) #1

declare dso_local i32 @HandleImageArg(i32, i8**, i32*, i8 signext, i32, i8*) #1

declare dso_local i32 @HandleDumpAttributes(i32, i8**, i32*, i8*) #1

declare dso_local i32 @_getch(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
