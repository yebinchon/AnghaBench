; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/winmm/extr_mci.c_MCI_IsCommandTableValid.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/winmm/extr_mci.c_MCI_IsCommandTableValid.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32*, i32 }

@FALSE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [43 x i8] c"Dumping cmdTbl=%d [lpTable=%p devType=%d]\0A\00", align 1
@S_MciCmdTable = common dso_local global %struct.TYPE_2__* null, align 8
@MAX_MCICMDTABLE = common dso_local global i64 0, align 8
@TRUE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i64)* @MCI_IsCommandTableValid to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @MCI_IsCommandTableValid(i64 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i64, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store i64 %0, i64* %3, align 8
  store i32 0, i32* %8, align 4
  %10 = load i32, i32* @FALSE, align 4
  store i32 %10, i32* %9, align 4
  %11 = load i64, i64* %3, align 8
  %12 = load %struct.TYPE_2__*, %struct.TYPE_2__** @S_MciCmdTable, align 8
  %13 = load i64, i64* %3, align 8
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i64 %13
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 0
  %16 = load i32*, i32** %15, align 8
  %17 = load %struct.TYPE_2__*, %struct.TYPE_2__** @S_MciCmdTable, align 8
  %18 = load i64, i64* %3, align 8
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i64 %18
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 8
  %22 = call i32 @TRACE(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str, i64 0, i64 0), i64 %11, i32* %16, i32 %21)
  %23 = load i64, i64* %3, align 8
  %24 = load i64, i64* @MAX_MCICMDTABLE, align 8
  %25 = icmp uge i64 %23, %24
  br i1 %25, label %33, label %26

26:                                               ; preds = %1
  %27 = load %struct.TYPE_2__*, %struct.TYPE_2__** @S_MciCmdTable, align 8
  %28 = load i64, i64* %3, align 8
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i64 %28
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %29, i32 0, i32 0
  %31 = load i32*, i32** %30, align 8
  %32 = icmp ne i32* %31, null
  br i1 %32, label %35, label %33

33:                                               ; preds = %26, %1
  %34 = load i32, i32* @FALSE, align 4
  store i32 %34, i32* %2, align 4
  br label %162

35:                                               ; preds = %26
  %36 = load %struct.TYPE_2__*, %struct.TYPE_2__** @S_MciCmdTable, align 8
  %37 = load i64, i64* %3, align 8
  %38 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %36, i64 %37
  %39 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %38, i32 0, i32 0
  %40 = load i32*, i32** %39, align 8
  store i32* %40, i32** %4, align 8
  br label %41

41:                                               ; preds = %157, %35
  %42 = load i32*, i32** %4, align 8
  store i32* %42, i32** %5, align 8
  %43 = load i32*, i32** %5, align 8
  %44 = call i32 @strlenW(i32* %43)
  %45 = add nsw i32 %44, 1
  %46 = sext i32 %45 to i64
  %47 = mul i64 %46, 4
  %48 = load i32*, i32** %4, align 8
  %49 = getelementptr inbounds i32, i32* %48, i64 %47
  store i32* %49, i32** %4, align 8
  %50 = load i32*, i32** %4, align 8
  %51 = load i32, i32* %50, align 4
  store i32 %51, i32* %6, align 4
  %52 = load i32*, i32** %4, align 8
  %53 = getelementptr inbounds i32, i32* %52, i64 4
  %54 = load i32, i32* %53, align 4
  store i32 %54, i32* %7, align 4
  %55 = load i32*, i32** %4, align 8
  %56 = getelementptr inbounds i32, i32* %55, i64 8
  store i32* %56, i32** %4, align 8
  %57 = load i32, i32* %8, align 4
  %58 = add nsw i32 %57, 1
  store i32 %58, i32* %8, align 4
  %59 = load i32, i32* %7, align 4
  switch i32 %59, label %154 [
    i32 137, label %60
    i32 128, label %70
    i32 131, label %76
    i32 135, label %83
    i32 129, label %96
    i32 132, label %106
    i32 134, label %113
    i32 130, label %123
    i32 136, label %133
    i32 133, label %140
  ]

60:                                               ; preds = %41
  %61 = load i32*, i32** %5, align 8
  %62 = load i32, i32* %61, align 4
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %64, label %67

64:                                               ; preds = %60
  %65 = load i32, i32* %6, align 4
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %69, label %67

67:                                               ; preds = %64, %60
  %68 = load i32, i32* @FALSE, align 4
  store i32 %68, i32* %2, align 4
  br label %162

69:                                               ; preds = %64
  store i32 0, i32* %8, align 4
  br label %156

70:                                               ; preds = %41
  %71 = load i32, i32* %9, align 4
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %73, label %75

73:                                               ; preds = %70
  %74 = load i32, i32* @FALSE, align 4
  store i32 %74, i32* %2, align 4
  br label %162

75:                                               ; preds = %70
  br label %156

76:                                               ; preds = %41
  %77 = load i32*, i32** %5, align 8
  %78 = load i32, i32* %77, align 4
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %82, label %80

80:                                               ; preds = %76
  %81 = load i32, i32* @FALSE, align 4
  store i32 %81, i32* %2, align 4
  br label %162

82:                                               ; preds = %76
  br label %156

83:                                               ; preds = %41
  %84 = load i32*, i32** %5, align 8
  %85 = load i32, i32* %84, align 4
  %86 = icmp ne i32 %85, 0
  br i1 %86, label %93, label %87

87:                                               ; preds = %83
  %88 = load i32, i32* %6, align 4
  %89 = icmp ne i32 %88, 0
  br i1 %89, label %93, label %90

90:                                               ; preds = %87
  %91 = load i32, i32* %8, align 4
  %92 = icmp eq i32 %91, 0
  br i1 %92, label %93, label %95

93:                                               ; preds = %90, %87, %83
  %94 = load i32, i32* @FALSE, align 4
  store i32 %94, i32* %2, align 4
  br label %162

95:                                               ; preds = %90
  store i32 0, i32* %8, align 4
  br label %156

96:                                               ; preds = %41
  %97 = load i32*, i32** %5, align 8
  %98 = load i32, i32* %97, align 4
  %99 = icmp ne i32 %98, 0
  br i1 %99, label %103, label %100

100:                                              ; preds = %96
  %101 = load i32, i32* %8, align 4
  %102 = icmp ne i32 %101, 1
  br i1 %102, label %103, label %105

103:                                              ; preds = %100, %96
  %104 = load i32, i32* @FALSE, align 4
  store i32 %104, i32* %2, align 4
  br label %162

105:                                              ; preds = %100
  br label %156

106:                                              ; preds = %41
  %107 = load i32*, i32** %5, align 8
  %108 = load i32, i32* %107, align 4
  %109 = icmp ne i32 %108, 0
  br i1 %109, label %112, label %110

110:                                              ; preds = %106
  %111 = load i32, i32* @FALSE, align 4
  store i32 %111, i32* %2, align 4
  br label %162

112:                                              ; preds = %106
  br label %156

113:                                              ; preds = %41
  %114 = load i32*, i32** %5, align 8
  %115 = load i32, i32* %114, align 4
  %116 = icmp ne i32 %115, 0
  br i1 %116, label %120, label %117

117:                                              ; preds = %113
  %118 = load i32, i32* %6, align 4
  %119 = icmp ne i32 %118, 0
  br i1 %119, label %120, label %122

120:                                              ; preds = %117, %113
  %121 = load i32, i32* @FALSE, align 4
  store i32 %121, i32* %2, align 4
  br label %162

122:                                              ; preds = %117
  store i32 0, i32* %8, align 4
  br label %156

123:                                              ; preds = %41
  %124 = load i32*, i32** %5, align 8
  %125 = load i32, i32* %124, align 4
  %126 = icmp ne i32 %125, 0
  br i1 %126, label %127, label %130

127:                                              ; preds = %123
  %128 = load i32, i32* %9, align 4
  %129 = icmp ne i32 %128, 0
  br i1 %129, label %130, label %132

130:                                              ; preds = %127, %123
  %131 = load i32, i32* @FALSE, align 4
  store i32 %131, i32* %2, align 4
  br label %162

132:                                              ; preds = %127
  br label %156

133:                                              ; preds = %41
  %134 = load i32, i32* %9, align 4
  %135 = icmp ne i32 %134, 0
  br i1 %135, label %136, label %138

136:                                              ; preds = %133
  %137 = load i32, i32* @FALSE, align 4
  store i32 %137, i32* %2, align 4
  br label %162

138:                                              ; preds = %133
  %139 = load i32, i32* @TRUE, align 4
  store i32 %139, i32* %9, align 4
  br label %156

140:                                              ; preds = %41
  %141 = load i32*, i32** %5, align 8
  %142 = load i32, i32* %141, align 4
  %143 = icmp ne i32 %142, 0
  br i1 %143, label %150, label %144

144:                                              ; preds = %140
  %145 = load i32, i32* %6, align 4
  %146 = icmp ne i32 %145, 0
  br i1 %146, label %150, label %147

147:                                              ; preds = %144
  %148 = load i32, i32* %9, align 4
  %149 = icmp ne i32 %148, 0
  br i1 %149, label %152, label %150

150:                                              ; preds = %147, %144, %140
  %151 = load i32, i32* @FALSE, align 4
  store i32 %151, i32* %2, align 4
  br label %162

152:                                              ; preds = %147
  %153 = load i32, i32* @FALSE, align 4
  store i32 %153, i32* %9, align 4
  br label %156

154:                                              ; preds = %41
  %155 = load i32, i32* @FALSE, align 4
  store i32 %155, i32* %2, align 4
  br label %162

156:                                              ; preds = %152, %138, %132, %122, %112, %105, %95, %82, %75, %69
  br label %157

157:                                              ; preds = %156
  %158 = load i32, i32* %7, align 4
  %159 = icmp ne i32 %158, 134
  br i1 %159, label %41, label %160

160:                                              ; preds = %157
  %161 = load i32, i32* @TRUE, align 4
  store i32 %161, i32* %2, align 4
  br label %162

162:                                              ; preds = %160, %154, %150, %136, %130, %120, %110, %103, %93, %80, %73, %67, %33
  %163 = load i32, i32* %2, align 4
  ret i32 %163
}

declare dso_local i32 @TRACE(i8*, i64, i32*, i32) #1

declare dso_local i32 @strlenW(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
