; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/riched20/extr_reader.c_SpecialChar.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/riched20/extr_reader.c_SpecialChar.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_14__ = type { i32, i32, i32, %struct.TYPE_13__*, %struct.TYPE_15__, i32, i32 }
%struct.TYPE_13__ = type { i32 }
%struct.TYPE_15__ = type { i32 }

@rtfDestination = common dso_local global i32 0, align 4
@rtfText = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [49 x i8] c"The token behind \\u is not text, but (%d,%d,%d)\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_14__*)* @SpecialChar to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @SpecialChar(%struct.TYPE_14__* %0) #0 {
  %2 = alloca %struct.TYPE_14__*, align 8
  %3 = alloca i32, align 4
  store %struct.TYPE_14__* %0, %struct.TYPE_14__** %2, align 8
  %4 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %5 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %4, i32 0, i32 0
  %6 = load i32, i32* %5, align 8
  switch i32 %6, label %142 [
    i32 136, label %7
    i32 128, label %22
    i32 141, label %60
    i32 135, label %67
    i32 130, label %67
    i32 134, label %67
    i32 139, label %94
    i32 129, label %97
    i32 140, label %100
    i32 149, label %103
    i32 148, label %106
    i32 146, label %109
    i32 147, label %112
    i32 145, label %115
    i32 143, label %118
    i32 132, label %121
    i32 144, label %124
    i32 133, label %127
    i32 142, label %130
    i32 131, label %133
    i32 138, label %136
    i32 137, label %139
  ]

7:                                                ; preds = %1
  %8 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %9 = call i32 @RTFGetToken(%struct.TYPE_14__* %8)
  %10 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %11 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %10, i32 0, i32 6
  %12 = load i32, i32* %11, align 8
  %13 = load i32, i32* @rtfDestination, align 4
  %14 = icmp ne i32 %12, %13
  br i1 %14, label %15, label %18

15:                                               ; preds = %7
  %16 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %17 = call i32 @RTFSkipGroup(%struct.TYPE_14__* %16)
  br label %21

18:                                               ; preds = %7
  %19 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %20 = call i32 @RTFRouteToken(%struct.TYPE_14__* %19)
  br label %21

21:                                               ; preds = %18, %15
  br label %142

22:                                               ; preds = %1
  %23 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %24 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %25 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 4
  %27 = call i32 @RTFPutUnicodeChar(%struct.TYPE_14__* %23, i32 %26)
  store i32 0, i32* %3, align 4
  br label %28

28:                                               ; preds = %56, %22
  %29 = load i32, i32* %3, align 4
  %30 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %31 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %30, i32 0, i32 2
  %32 = load i32, i32* %31, align 8
  %33 = icmp slt i32 %29, %32
  br i1 %33, label %34, label %59

34:                                               ; preds = %28
  %35 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %36 = call i32 @RTFGetToken(%struct.TYPE_14__* %35)
  %37 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %38 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %37, i32 0, i32 6
  %39 = load i32, i32* %38, align 8
  %40 = load i32, i32* @rtfText, align 4
  %41 = icmp ne i32 %39, %40
  br i1 %41, label %42, label %55

42:                                               ; preds = %34
  %43 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %44 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %43, i32 0, i32 6
  %45 = load i32, i32* %44, align 8
  %46 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %47 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %46, i32 0, i32 5
  %48 = load i32, i32* %47, align 4
  %49 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %50 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 8
  %52 = call i32 @ERR(i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str, i64 0, i64 0), i32 %45, i32 %48, i32 %51)
  %53 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %54 = call i32 @RTFUngetToken(%struct.TYPE_14__* %53)
  br label %59

55:                                               ; preds = %34
  br label %56

56:                                               ; preds = %55
  %57 = load i32, i32* %3, align 4
  %58 = add nsw i32 %57, 1
  store i32 %58, i32* %3, align 4
  br label %28

59:                                               ; preds = %42, %28
  br label %142

60:                                               ; preds = %1
  %61 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %62 = call i32 @RTFFlushOutputBuffer(%struct.TYPE_14__* %61)
  %63 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %64 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %63, i32 0, i32 3
  %65 = load %struct.TYPE_13__*, %struct.TYPE_13__** %64, align 8
  %66 = call i32 @ME_InsertEndRowFromCursor(%struct.TYPE_13__* %65, i32 0)
  br label %142

67:                                               ; preds = %1, %1, %1
  %68 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %69 = call i32 @RTFFlushOutputBuffer(%struct.TYPE_14__* %68)
  %70 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %71 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %70, i32 0, i32 3
  %72 = load %struct.TYPE_13__*, %struct.TYPE_13__** %71, align 8
  %73 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %74 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %73, i32 0, i32 4
  %75 = call i32 @ME_SetSelectionParaFormat(%struct.TYPE_13__* %72, %struct.TYPE_15__* %74)
  %76 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %77 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %76, i32 0, i32 4
  %78 = call i32 @memset(%struct.TYPE_15__* %77, i32 0, i32 4)
  %79 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %80 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %79, i32 0, i32 4
  %81 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %80, i32 0, i32 0
  store i32 4, i32* %81, align 8
  %82 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %83 = call i32 @RTFPutUnicodeChar(%struct.TYPE_14__* %82, i32 13)
  %84 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %85 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %84, i32 0, i32 3
  %86 = load %struct.TYPE_13__*, %struct.TYPE_13__** %85, align 8
  %87 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %86, i32 0, i32 0
  %88 = load i32, i32* %87, align 4
  %89 = icmp ne i32 %88, 0
  br i1 %89, label %90, label %93

90:                                               ; preds = %67
  %91 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %92 = call i32 @RTFPutUnicodeChar(%struct.TYPE_14__* %91, i32 10)
  br label %93

93:                                               ; preds = %90, %67
  br label %142

94:                                               ; preds = %1
  %95 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %96 = call i32 @RTFPutUnicodeChar(%struct.TYPE_14__* %95, i32 160)
  br label %142

97:                                               ; preds = %1
  %98 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %99 = call i32 @RTFPutUnicodeChar(%struct.TYPE_14__* %98, i32 9)
  br label %142

100:                                              ; preds = %1
  %101 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %102 = call i32 @RTFPutUnicodeChar(%struct.TYPE_14__* %101, i32 8209)
  br label %142

103:                                              ; preds = %1
  %104 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %105 = call i32 @RTFPutUnicodeChar(%struct.TYPE_14__* %104, i32 8226)
  br label %142

106:                                              ; preds = %1
  %107 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %108 = call i32 @RTFPutUnicodeChar(%struct.TYPE_14__* %107, i32 8212)
  br label %142

109:                                              ; preds = %1
  %110 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %111 = call i32 @RTFPutUnicodeChar(%struct.TYPE_14__* %110, i32 8211)
  br label %142

112:                                              ; preds = %1
  %113 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %114 = call i32 @RTFPutUnicodeChar(%struct.TYPE_14__* %113, i32 32)
  br label %142

115:                                              ; preds = %1
  %116 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %117 = call i32 @RTFPutUnicodeChar(%struct.TYPE_14__* %116, i32 32)
  br label %142

118:                                              ; preds = %1
  %119 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %120 = call i32 @RTFPutUnicodeChar(%struct.TYPE_14__* %119, i32 8216)
  br label %142

121:                                              ; preds = %1
  %122 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %123 = call i32 @RTFPutUnicodeChar(%struct.TYPE_14__* %122, i32 8217)
  br label %142

124:                                              ; preds = %1
  %125 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %126 = call i32 @RTFPutUnicodeChar(%struct.TYPE_14__* %125, i32 8220)
  br label %142

127:                                              ; preds = %1
  %128 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %129 = call i32 @RTFPutUnicodeChar(%struct.TYPE_14__* %128, i32 8221)
  br label %142

130:                                              ; preds = %1
  %131 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %132 = call i32 @RTFPutUnicodeChar(%struct.TYPE_14__* %131, i32 8206)
  br label %142

133:                                              ; preds = %1
  %134 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %135 = call i32 @RTFPutUnicodeChar(%struct.TYPE_14__* %134, i32 8207)
  br label %142

136:                                              ; preds = %1
  %137 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %138 = call i32 @RTFPutUnicodeChar(%struct.TYPE_14__* %137, i32 8205)
  br label %142

139:                                              ; preds = %1
  %140 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %141 = call i32 @RTFPutUnicodeChar(%struct.TYPE_14__* %140, i32 8204)
  br label %142

142:                                              ; preds = %1, %139, %136, %133, %130, %127, %124, %121, %118, %115, %112, %109, %106, %103, %100, %97, %94, %93, %60, %59, %21
  ret void
}

declare dso_local i32 @RTFGetToken(%struct.TYPE_14__*) #1

declare dso_local i32 @RTFSkipGroup(%struct.TYPE_14__*) #1

declare dso_local i32 @RTFRouteToken(%struct.TYPE_14__*) #1

declare dso_local i32 @RTFPutUnicodeChar(%struct.TYPE_14__*, i32) #1

declare dso_local i32 @ERR(i8*, i32, i32, i32) #1

declare dso_local i32 @RTFUngetToken(%struct.TYPE_14__*) #1

declare dso_local i32 @RTFFlushOutputBuffer(%struct.TYPE_14__*) #1

declare dso_local i32 @ME_InsertEndRowFromCursor(%struct.TYPE_13__*, i32) #1

declare dso_local i32 @ME_SetSelectionParaFormat(%struct.TYPE_13__*, %struct.TYPE_15__*) #1

declare dso_local i32 @memset(%struct.TYPE_15__*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
