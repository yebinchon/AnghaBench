; ModuleID = '/home/carl/AnghaBench/reactos/sdk/lib/crt/wine/extr_undname.c_symbol_demangle.c'
source_filename = "/home/carl/AnghaBench/reactos/sdk/lib/crt/wine/extr_undname.c_symbol_demangle.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.parsed_symbol = type { i32, i8*, i8*, %struct.TYPE_3__, %struct.TYPE_4__ }
%struct.TYPE_3__ = type { i32, i32 }
%struct.TYPE_4__ = type { i32, i8** }
%struct.datatype_t = type { i32, i32 }
%struct.array = type { i32 }

@FALSE = common dso_local global i32 0, align 4
@symbol_demangle.dashed_null = internal constant [9 x i8] c"--null--\00", align 1
@UNDNAME_NO_ARGUMENTS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [5 x i8] c"%s%s\00", align 1
@TRUE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [13 x i8] c"operator new\00", align 1
@.str.2 = private unnamed_addr constant [16 x i8] c"operator delete\00", align 1
@.str.3 = private unnamed_addr constant [10 x i8] c"operator=\00", align 1
@.str.4 = private unnamed_addr constant [11 x i8] c"operator>>\00", align 1
@.str.5 = private unnamed_addr constant [11 x i8] c"operator<<\00", align 1
@.str.6 = private unnamed_addr constant [10 x i8] c"operator!\00", align 1
@.str.7 = private unnamed_addr constant [11 x i8] c"operator==\00", align 1
@.str.8 = private unnamed_addr constant [11 x i8] c"operator!=\00", align 1
@.str.9 = private unnamed_addr constant [11 x i8] c"operator[]\00", align 1
@.str.10 = private unnamed_addr constant [10 x i8] c"operator \00", align 1
@.str.11 = private unnamed_addr constant [11 x i8] c"operator->\00", align 1
@.str.12 = private unnamed_addr constant [10 x i8] c"operator*\00", align 1
@.str.13 = private unnamed_addr constant [11 x i8] c"operator++\00", align 1
@.str.14 = private unnamed_addr constant [11 x i8] c"operator--\00", align 1
@.str.15 = private unnamed_addr constant [10 x i8] c"operator-\00", align 1
@.str.16 = private unnamed_addr constant [10 x i8] c"operator+\00", align 1
@.str.17 = private unnamed_addr constant [10 x i8] c"operator&\00", align 1
@.str.18 = private unnamed_addr constant [12 x i8] c"operator->*\00", align 1
@.str.19 = private unnamed_addr constant [10 x i8] c"operator/\00", align 1
@.str.20 = private unnamed_addr constant [10 x i8] c"operator%\00", align 1
@.str.21 = private unnamed_addr constant [10 x i8] c"operator<\00", align 1
@.str.22 = private unnamed_addr constant [11 x i8] c"operator<=\00", align 1
@.str.23 = private unnamed_addr constant [10 x i8] c"operator>\00", align 1
@.str.24 = private unnamed_addr constant [11 x i8] c"operator>=\00", align 1
@.str.25 = private unnamed_addr constant [10 x i8] c"operator,\00", align 1
@.str.26 = private unnamed_addr constant [11 x i8] c"operator()\00", align 1
@.str.27 = private unnamed_addr constant [10 x i8] c"operator~\00", align 1
@.str.28 = private unnamed_addr constant [10 x i8] c"operator^\00", align 1
@.str.29 = private unnamed_addr constant [10 x i8] c"operator|\00", align 1
@.str.30 = private unnamed_addr constant [11 x i8] c"operator&&\00", align 1
@.str.31 = private unnamed_addr constant [11 x i8] c"operator||\00", align 1
@.str.32 = private unnamed_addr constant [11 x i8] c"operator*=\00", align 1
@.str.33 = private unnamed_addr constant [11 x i8] c"operator+=\00", align 1
@.str.34 = private unnamed_addr constant [11 x i8] c"operator-=\00", align 1
@.str.35 = private unnamed_addr constant [11 x i8] c"operator/=\00", align 1
@.str.36 = private unnamed_addr constant [11 x i8] c"operator%=\00", align 1
@.str.37 = private unnamed_addr constant [12 x i8] c"operator>>=\00", align 1
@.str.38 = private unnamed_addr constant [12 x i8] c"operator<<=\00", align 1
@.str.39 = private unnamed_addr constant [11 x i8] c"operator&=\00", align 1
@.str.40 = private unnamed_addr constant [11 x i8] c"operator|=\00", align 1
@.str.41 = private unnamed_addr constant [11 x i8] c"operator^=\00", align 1
@.str.42 = private unnamed_addr constant [10 x i8] c"`vftable'\00", align 1
@.str.43 = private unnamed_addr constant [10 x i8] c"`vbtable'\00", align 1
@.str.44 = private unnamed_addr constant [8 x i8] c"`vcall'\00", align 1
@.str.45 = private unnamed_addr constant [9 x i8] c"`typeof'\00", align 1
@.str.46 = private unnamed_addr constant [21 x i8] c"`local static guard'\00", align 1
@.str.47 = private unnamed_addr constant [9 x i8] c"`string'\00", align 1
@.str.48 = private unnamed_addr constant [19 x i8] c"`vbase destructor'\00", align 1
@.str.49 = private unnamed_addr constant [29 x i8] c"`vector deleting destructor'\00", align 1
@.str.50 = private unnamed_addr constant [30 x i8] c"`default constructor closure'\00", align 1
@.str.51 = private unnamed_addr constant [29 x i8] c"`scalar deleting destructor'\00", align 1
@.str.52 = private unnamed_addr constant [30 x i8] c"`vector constructor iterator'\00", align 1
@.str.53 = private unnamed_addr constant [29 x i8] c"`vector destructor iterator'\00", align 1
@.str.54 = private unnamed_addr constant [36 x i8] c"`vector vbase constructor iterator'\00", align 1
@.str.55 = private unnamed_addr constant [27 x i8] c"`virtual displacement map'\00", align 1
@.str.56 = private unnamed_addr constant [33 x i8] c"`eh vector constructor iterator'\00", align 1
@.str.57 = private unnamed_addr constant [32 x i8] c"`eh vector destructor iterator'\00", align 1
@.str.58 = private unnamed_addr constant [39 x i8] c"`eh vector vbase constructor iterator'\00", align 1
@.str.59 = private unnamed_addr constant [27 x i8] c"`copy constructor closure'\00", align 1
@UNDNAME_NO_FUNCTION_RETURNS = common dso_local global i32 0, align 4
@.str.60 = private unnamed_addr constant [28 x i8] c"%s%s `RTTI Type Descriptor'\00", align 1
@.str.61 = private unnamed_addr constant [46 x i8] c"`RTTI Base Class Descriptor at (%s,%s,%s,%s)'\00", align 1
@.str.62 = private unnamed_addr constant [24 x i8] c"`RTTI Base Class Array'\00", align 1
@.str.63 = private unnamed_addr constant [34 x i8] c"`RTTI Class Hierarchy Descriptor'\00", align 1
@.str.64 = private unnamed_addr constant [31 x i8] c"`RTTI Complete Object Locator'\00", align 1
@.str.65 = private unnamed_addr constant [29 x i8] c"Unknown RTTI operator: _R%c\0A\00", align 1
@.str.66 = private unnamed_addr constant [16 x i8] c"`local vftable'\00", align 1
@.str.67 = private unnamed_addr constant [36 x i8] c"`local vftable constructor closure'\00", align 1
@.str.68 = private unnamed_addr constant [15 x i8] c"operator new[]\00", align 1
@.str.69 = private unnamed_addr constant [18 x i8] c"operator delete[]\00", align 1
@.str.70 = private unnamed_addr constant [27 x i8] c"`placement delete closure'\00", align 1
@.str.71 = private unnamed_addr constant [29 x i8] c"`placement delete[] closure'\00", align 1
@.str.72 = private unnamed_addr constant [23 x i8] c"Unknown operator: _%c\0A\00", align 1
@.str.73 = private unnamed_addr constant [22 x i8] c"Unknown operator: %c\0A\00", align 1
@.str.74 = private unnamed_addr constant [4 x i8] c"~%s\00", align 1
@.str.75 = private unnamed_addr constant [14 x i8] c"Failed at %s\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.parsed_symbol*)* @symbol_demangle to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @symbol_demangle(%struct.parsed_symbol* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.parsed_symbol*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.datatype_t, align 4
  %7 = alloca i8*, align 8
  %8 = alloca %struct.datatype_t, align 4
  %9 = alloca %struct.array, align 4
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca %struct.array, align 4
  store %struct.parsed_symbol* %0, %struct.parsed_symbol** %3, align 8
  %16 = load i32, i32* @FALSE, align 4
  store i32 %16, i32* %4, align 4
  store i32 0, i32* %5, align 4
  %17 = load %struct.parsed_symbol*, %struct.parsed_symbol** %3, align 8
  %18 = getelementptr inbounds %struct.parsed_symbol, %struct.parsed_symbol* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = load i32, i32* @UNDNAME_NO_ARGUMENTS, align 4
  %21 = and i32 %19, %20
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %41

23:                                               ; preds = %1
  %24 = load %struct.parsed_symbol*, %struct.parsed_symbol** %3, align 8
  %25 = load i32, i32* @FALSE, align 4
  %26 = call i64 @demangle_datatype(%struct.parsed_symbol* %24, %struct.datatype_t* %6, %struct.array* null, i32 %25)
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %40

28:                                               ; preds = %23
  %29 = load %struct.parsed_symbol*, %struct.parsed_symbol** %3, align 8
  %30 = getelementptr inbounds %struct.datatype_t, %struct.datatype_t* %6, i32 0, i32 1
  %31 = load i32, i32* %30, align 4
  %32 = sext i32 %31 to i64
  %33 = inttoptr i64 %32 to i8*
  %34 = getelementptr inbounds %struct.datatype_t, %struct.datatype_t* %6, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = call i8* (%struct.parsed_symbol*, i8*, i8*, ...) @str_printf(%struct.parsed_symbol* %29, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i8* %33, i32 %35)
  %37 = load %struct.parsed_symbol*, %struct.parsed_symbol** %3, align 8
  %38 = getelementptr inbounds %struct.parsed_symbol, %struct.parsed_symbol* %37, i32 0, i32 1
  store i8* %36, i8** %38, align 8
  %39 = load i32, i32* @TRUE, align 4
  store i32 %39, i32* %4, align 4
  br label %40

40:                                               ; preds = %28, %23
  br label %469

41:                                               ; preds = %1
  %42 = load %struct.parsed_symbol*, %struct.parsed_symbol** %3, align 8
  %43 = getelementptr inbounds %struct.parsed_symbol, %struct.parsed_symbol* %42, i32 0, i32 2
  %44 = load i8*, i8** %43, align 8
  %45 = load i8, i8* %44, align 1
  %46 = sext i8 %45 to i32
  %47 = icmp ne i32 %46, 63
  br i1 %47, label %48, label %50

48:                                               ; preds = %41
  %49 = load i32, i32* @FALSE, align 4
  store i32 %49, i32* %2, align 4
  br label %485

50:                                               ; preds = %41
  %51 = load %struct.parsed_symbol*, %struct.parsed_symbol** %3, align 8
  %52 = getelementptr inbounds %struct.parsed_symbol, %struct.parsed_symbol* %51, i32 0, i32 2
  %53 = load i8*, i8** %52, align 8
  %54 = getelementptr inbounds i8, i8* %53, i32 1
  store i8* %54, i8** %52, align 8
  %55 = load %struct.parsed_symbol*, %struct.parsed_symbol** %3, align 8
  %56 = getelementptr inbounds %struct.parsed_symbol, %struct.parsed_symbol* %55, i32 0, i32 2
  %57 = load i8*, i8** %56, align 8
  %58 = load i8, i8* %57, align 1
  %59 = sext i8 %58 to i32
  %60 = icmp eq i32 %59, 63
  br i1 %60, label %61, label %308

61:                                               ; preds = %50
  %62 = load %struct.parsed_symbol*, %struct.parsed_symbol** %3, align 8
  %63 = getelementptr inbounds %struct.parsed_symbol, %struct.parsed_symbol* %62, i32 0, i32 2
  %64 = load i8*, i8** %63, align 8
  %65 = getelementptr inbounds i8, i8* %64, i64 1
  %66 = load i8, i8* %65, align 1
  %67 = sext i8 %66 to i32
  %68 = icmp ne i32 %67, 36
  br i1 %68, label %77, label %69

69:                                               ; preds = %61
  %70 = load %struct.parsed_symbol*, %struct.parsed_symbol** %3, align 8
  %71 = getelementptr inbounds %struct.parsed_symbol, %struct.parsed_symbol* %70, i32 0, i32 2
  %72 = load i8*, i8** %71, align 8
  %73 = getelementptr inbounds i8, i8* %72, i64 2
  %74 = load i8, i8* %73, align 1
  %75 = sext i8 %74 to i32
  %76 = icmp eq i32 %75, 63
  br i1 %76, label %77, label %308

77:                                               ; preds = %69, %61
  store i8* null, i8** %7, align 8
  %78 = load %struct.parsed_symbol*, %struct.parsed_symbol** %3, align 8
  %79 = getelementptr inbounds %struct.parsed_symbol, %struct.parsed_symbol* %78, i32 0, i32 2
  %80 = load i8*, i8** %79, align 8
  %81 = getelementptr inbounds i8, i8* %80, i64 1
  %82 = load i8, i8* %81, align 1
  %83 = sext i8 %82 to i32
  %84 = icmp eq i32 %83, 36
  br i1 %84, label %85, label %90

85:                                               ; preds = %77
  store i32 6, i32* %5, align 4
  %86 = load %struct.parsed_symbol*, %struct.parsed_symbol** %3, align 8
  %87 = getelementptr inbounds %struct.parsed_symbol, %struct.parsed_symbol* %86, i32 0, i32 2
  %88 = load i8*, i8** %87, align 8
  %89 = getelementptr inbounds i8, i8* %88, i64 2
  store i8* %89, i8** %87, align 8
  br label %90

90:                                               ; preds = %85, %77
  %91 = load %struct.parsed_symbol*, %struct.parsed_symbol** %3, align 8
  %92 = getelementptr inbounds %struct.parsed_symbol, %struct.parsed_symbol* %91, i32 0, i32 2
  %93 = load i8*, i8** %92, align 8
  %94 = getelementptr inbounds i8, i8* %93, i32 1
  store i8* %94, i8** %92, align 8
  %95 = load i8, i8* %94, align 1
  %96 = sext i8 %95 to i32
  switch i32 %96, label %253 [
    i32 48, label %97
    i32 49, label %98
    i32 50, label %99
    i32 51, label %100
    i32 52, label %101
    i32 53, label %102
    i32 54, label %103
    i32 55, label %104
    i32 56, label %105
    i32 57, label %106
    i32 65, label %107
    i32 66, label %108
    i32 67, label %109
    i32 68, label %110
    i32 69, label %111
    i32 70, label %112
    i32 71, label %113
    i32 72, label %114
    i32 73, label %115
    i32 74, label %116
    i32 75, label %117
    i32 76, label %118
    i32 77, label %119
    i32 78, label %120
    i32 79, label %121
    i32 80, label %122
    i32 81, label %123
    i32 82, label %124
    i32 83, label %125
    i32 84, label %126
    i32 85, label %127
    i32 86, label %128
    i32 87, label %129
    i32 88, label %130
    i32 89, label %131
    i32 90, label %132
    i32 95, label %133
  ]

97:                                               ; preds = %90
  store i32 1, i32* %5, align 4
  br label %261

98:                                               ; preds = %90
  store i32 2, i32* %5, align 4
  br label %261

99:                                               ; preds = %90
  store i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i64 0, i64 0), i8** %7, align 8
  br label %261

100:                                              ; preds = %90
  store i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.2, i64 0, i64 0), i8** %7, align 8
  br label %261

101:                                              ; preds = %90
  store i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.3, i64 0, i64 0), i8** %7, align 8
  br label %261

102:                                              ; preds = %90
  store i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.4, i64 0, i64 0), i8** %7, align 8
  br label %261

103:                                              ; preds = %90
  store i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.5, i64 0, i64 0), i8** %7, align 8
  br label %261

104:                                              ; preds = %90
  store i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.6, i64 0, i64 0), i8** %7, align 8
  br label %261

105:                                              ; preds = %90
  store i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.7, i64 0, i64 0), i8** %7, align 8
  br label %261

106:                                              ; preds = %90
  store i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.8, i64 0, i64 0), i8** %7, align 8
  br label %261

107:                                              ; preds = %90
  store i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.9, i64 0, i64 0), i8** %7, align 8
  br label %261

108:                                              ; preds = %90
  store i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.10, i64 0, i64 0), i8** %7, align 8
  store i32 3, i32* %5, align 4
  br label %261

109:                                              ; preds = %90
  store i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.11, i64 0, i64 0), i8** %7, align 8
  br label %261

110:                                              ; preds = %90
  store i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.12, i64 0, i64 0), i8** %7, align 8
  br label %261

111:                                              ; preds = %90
  store i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.13, i64 0, i64 0), i8** %7, align 8
  br label %261

112:                                              ; preds = %90
  store i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.14, i64 0, i64 0), i8** %7, align 8
  br label %261

113:                                              ; preds = %90
  store i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.15, i64 0, i64 0), i8** %7, align 8
  br label %261

114:                                              ; preds = %90
  store i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.16, i64 0, i64 0), i8** %7, align 8
  br label %261

115:                                              ; preds = %90
  store i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.17, i64 0, i64 0), i8** %7, align 8
  br label %261

116:                                              ; preds = %90
  store i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.18, i64 0, i64 0), i8** %7, align 8
  br label %261

117:                                              ; preds = %90
  store i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.19, i64 0, i64 0), i8** %7, align 8
  br label %261

118:                                              ; preds = %90
  store i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.20, i64 0, i64 0), i8** %7, align 8
  br label %261

119:                                              ; preds = %90
  store i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.21, i64 0, i64 0), i8** %7, align 8
  br label %261

120:                                              ; preds = %90
  store i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.22, i64 0, i64 0), i8** %7, align 8
  br label %261

121:                                              ; preds = %90
  store i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.23, i64 0, i64 0), i8** %7, align 8
  br label %261

122:                                              ; preds = %90
  store i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.24, i64 0, i64 0), i8** %7, align 8
  br label %261

123:                                              ; preds = %90
  store i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.25, i64 0, i64 0), i8** %7, align 8
  br label %261

124:                                              ; preds = %90
  store i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.26, i64 0, i64 0), i8** %7, align 8
  br label %261

125:                                              ; preds = %90
  store i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.27, i64 0, i64 0), i8** %7, align 8
  br label %261

126:                                              ; preds = %90
  store i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.28, i64 0, i64 0), i8** %7, align 8
  br label %261

127:                                              ; preds = %90
  store i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.29, i64 0, i64 0), i8** %7, align 8
  br label %261

128:                                              ; preds = %90
  store i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.30, i64 0, i64 0), i8** %7, align 8
  br label %261

129:                                              ; preds = %90
  store i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.31, i64 0, i64 0), i8** %7, align 8
  br label %261

130:                                              ; preds = %90
  store i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.32, i64 0, i64 0), i8** %7, align 8
  br label %261

131:                                              ; preds = %90
  store i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.33, i64 0, i64 0), i8** %7, align 8
  br label %261

132:                                              ; preds = %90
  store i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.34, i64 0, i64 0), i8** %7, align 8
  br label %261

133:                                              ; preds = %90
  %134 = load %struct.parsed_symbol*, %struct.parsed_symbol** %3, align 8
  %135 = getelementptr inbounds %struct.parsed_symbol, %struct.parsed_symbol* %134, i32 0, i32 2
  %136 = load i8*, i8** %135, align 8
  %137 = getelementptr inbounds i8, i8* %136, i32 1
  store i8* %137, i8** %135, align 8
  %138 = load i8, i8* %137, align 1
  %139 = sext i8 %138 to i32
  switch i32 %139, label %244 [
    i32 48, label %140
    i32 49, label %141
    i32 50, label %142
    i32 51, label %143
    i32 52, label %144
    i32 53, label %145
    i32 54, label %146
    i32 55, label %147
    i32 56, label %148
    i32 57, label %149
    i32 65, label %150
    i32 66, label %151
    i32 67, label %152
    i32 68, label %153
    i32 69, label %154
    i32 70, label %155
    i32 71, label %156
    i32 72, label %157
    i32 73, label %158
    i32 74, label %159
    i32 75, label %160
    i32 76, label %161
    i32 77, label %162
    i32 78, label %163
    i32 79, label %164
    i32 82, label %165
    i32 83, label %238
    i32 84, label %239
    i32 85, label %240
    i32 86, label %241
    i32 88, label %242
    i32 89, label %243
  ]

140:                                              ; preds = %133
  store i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.35, i64 0, i64 0), i8** %7, align 8
  br label %252

141:                                              ; preds = %133
  store i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.36, i64 0, i64 0), i8** %7, align 8
  br label %252

142:                                              ; preds = %133
  store i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.37, i64 0, i64 0), i8** %7, align 8
  br label %252

143:                                              ; preds = %133
  store i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.38, i64 0, i64 0), i8** %7, align 8
  br label %252

144:                                              ; preds = %133
  store i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.39, i64 0, i64 0), i8** %7, align 8
  br label %252

145:                                              ; preds = %133
  store i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.40, i64 0, i64 0), i8** %7, align 8
  br label %252

146:                                              ; preds = %133
  store i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.41, i64 0, i64 0), i8** %7, align 8
  br label %252

147:                                              ; preds = %133
  store i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.42, i64 0, i64 0), i8** %7, align 8
  br label %252

148:                                              ; preds = %133
  store i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.43, i64 0, i64 0), i8** %7, align 8
  br label %252

149:                                              ; preds = %133
  store i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.44, i64 0, i64 0), i8** %7, align 8
  br label %252

150:                                              ; preds = %133
  store i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.45, i64 0, i64 0), i8** %7, align 8
  br label %252

151:                                              ; preds = %133
  store i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.46, i64 0, i64 0), i8** %7, align 8
  br label %252

152:                                              ; preds = %133
  store i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.47, i64 0, i64 0), i8** %7, align 8
  store i32 4, i32* %5, align 4
  br label %252

153:                                              ; preds = %133
  store i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.48, i64 0, i64 0), i8** %7, align 8
  br label %252

154:                                              ; preds = %133
  store i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.49, i64 0, i64 0), i8** %7, align 8
  br label %252

155:                                              ; preds = %133
  store i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.50, i64 0, i64 0), i8** %7, align 8
  br label %252

156:                                              ; preds = %133
  store i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.51, i64 0, i64 0), i8** %7, align 8
  br label %252

157:                                              ; preds = %133
  store i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.52, i64 0, i64 0), i8** %7, align 8
  br label %252

158:                                              ; preds = %133
  store i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.53, i64 0, i64 0), i8** %7, align 8
  br label %252

159:                                              ; preds = %133
  store i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.54, i64 0, i64 0), i8** %7, align 8
  br label %252

160:                                              ; preds = %133
  store i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.55, i64 0, i64 0), i8** %7, align 8
  br label %252

161:                                              ; preds = %133
  store i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.56, i64 0, i64 0), i8** %7, align 8
  br label %252

162:                                              ; preds = %133
  store i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.57, i64 0, i64 0), i8** %7, align 8
  br label %252

163:                                              ; preds = %133
  store i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.58, i64 0, i64 0), i8** %7, align 8
  br label %252

164:                                              ; preds = %133
  store i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.59, i64 0, i64 0), i8** %7, align 8
  br label %252

165:                                              ; preds = %133
  %166 = load i32, i32* @UNDNAME_NO_FUNCTION_RETURNS, align 4
  %167 = load %struct.parsed_symbol*, %struct.parsed_symbol** %3, align 8
  %168 = getelementptr inbounds %struct.parsed_symbol, %struct.parsed_symbol* %167, i32 0, i32 0
  %169 = load i32, i32* %168, align 8
  %170 = or i32 %169, %166
  store i32 %170, i32* %168, align 8
  %171 = load %struct.parsed_symbol*, %struct.parsed_symbol** %3, align 8
  %172 = getelementptr inbounds %struct.parsed_symbol, %struct.parsed_symbol* %171, i32 0, i32 2
  %173 = load i8*, i8** %172, align 8
  %174 = getelementptr inbounds i8, i8* %173, i32 1
  store i8* %174, i8** %172, align 8
  %175 = load i8, i8* %174, align 1
  %176 = sext i8 %175 to i32
  switch i32 %176, label %230 [
    i32 48, label %177
    i32 49, label %204
    i32 50, label %227
    i32 51, label %228
    i32 52, label %229
  ]

177:                                              ; preds = %165
  %178 = load %struct.parsed_symbol*, %struct.parsed_symbol** %3, align 8
  %179 = getelementptr inbounds %struct.parsed_symbol, %struct.parsed_symbol* %178, i32 0, i32 2
  %180 = load i8*, i8** %179, align 8
  %181 = getelementptr inbounds i8, i8* %180, i32 1
  store i8* %181, i8** %179, align 8
  %182 = call i32 @str_array_init(%struct.array* %9)
  %183 = load %struct.parsed_symbol*, %struct.parsed_symbol** %3, align 8
  %184 = load i32, i32* @FALSE, align 4
  %185 = call i64 @demangle_datatype(%struct.parsed_symbol* %183, %struct.datatype_t* %8, %struct.array* %9, i32 %184)
  %186 = load %struct.parsed_symbol*, %struct.parsed_symbol** %3, align 8
  %187 = load i32, i32* @FALSE, align 4
  %188 = call i64 @demangle_datatype(%struct.parsed_symbol* %186, %struct.datatype_t* %8, %struct.array* null, i32 %187)
  %189 = icmp ne i64 %188, 0
  br i1 %189, label %191, label %190

190:                                              ; preds = %177
  br label %469

191:                                              ; preds = %177
  %192 = load %struct.parsed_symbol*, %struct.parsed_symbol** %3, align 8
  %193 = getelementptr inbounds %struct.datatype_t, %struct.datatype_t* %8, i32 0, i32 1
  %194 = load i32, i32* %193, align 4
  %195 = sext i32 %194 to i64
  %196 = inttoptr i64 %195 to i8*
  %197 = getelementptr inbounds %struct.datatype_t, %struct.datatype_t* %8, i32 0, i32 0
  %198 = load i32, i32* %197, align 4
  %199 = call i8* (%struct.parsed_symbol*, i8*, i8*, ...) @str_printf(%struct.parsed_symbol* %192, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.60, i64 0, i64 0), i8* %196, i32 %198)
  store i8* %199, i8** %7, align 8
  %200 = load %struct.parsed_symbol*, %struct.parsed_symbol** %3, align 8
  %201 = getelementptr inbounds %struct.parsed_symbol, %struct.parsed_symbol* %200, i32 0, i32 2
  %202 = load i8*, i8** %201, align 8
  %203 = getelementptr inbounds i8, i8* %202, i32 -1
  store i8* %203, i8** %201, align 8
  br label %237

204:                                              ; preds = %165
  %205 = load %struct.parsed_symbol*, %struct.parsed_symbol** %3, align 8
  %206 = getelementptr inbounds %struct.parsed_symbol, %struct.parsed_symbol* %205, i32 0, i32 2
  %207 = load i8*, i8** %206, align 8
  %208 = getelementptr inbounds i8, i8* %207, i32 1
  store i8* %208, i8** %206, align 8
  %209 = load %struct.parsed_symbol*, %struct.parsed_symbol** %3, align 8
  %210 = call i8* @get_number(%struct.parsed_symbol* %209)
  store i8* %210, i8** %10, align 8
  %211 = load %struct.parsed_symbol*, %struct.parsed_symbol** %3, align 8
  %212 = call i8* @get_number(%struct.parsed_symbol* %211)
  store i8* %212, i8** %11, align 8
  %213 = load %struct.parsed_symbol*, %struct.parsed_symbol** %3, align 8
  %214 = call i8* @get_number(%struct.parsed_symbol* %213)
  store i8* %214, i8** %12, align 8
  %215 = load %struct.parsed_symbol*, %struct.parsed_symbol** %3, align 8
  %216 = call i8* @get_number(%struct.parsed_symbol* %215)
  store i8* %216, i8** %13, align 8
  %217 = load %struct.parsed_symbol*, %struct.parsed_symbol** %3, align 8
  %218 = getelementptr inbounds %struct.parsed_symbol, %struct.parsed_symbol* %217, i32 0, i32 2
  %219 = load i8*, i8** %218, align 8
  %220 = getelementptr inbounds i8, i8* %219, i32 -1
  store i8* %220, i8** %218, align 8
  %221 = load %struct.parsed_symbol*, %struct.parsed_symbol** %3, align 8
  %222 = load i8*, i8** %10, align 8
  %223 = load i8*, i8** %11, align 8
  %224 = load i8*, i8** %12, align 8
  %225 = load i8*, i8** %13, align 8
  %226 = call i8* (%struct.parsed_symbol*, i8*, i8*, ...) @str_printf(%struct.parsed_symbol* %221, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.61, i64 0, i64 0), i8* %222, i8* %223, i8* %224, i8* %225)
  store i8* %226, i8** %7, align 8
  br label %237

227:                                              ; preds = %165
  store i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.62, i64 0, i64 0), i8** %7, align 8
  br label %237

228:                                              ; preds = %165
  store i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.63, i64 0, i64 0), i8** %7, align 8
  br label %237

229:                                              ; preds = %165
  store i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.64, i64 0, i64 0), i8** %7, align 8
  br label %237

230:                                              ; preds = %165
  %231 = load %struct.parsed_symbol*, %struct.parsed_symbol** %3, align 8
  %232 = getelementptr inbounds %struct.parsed_symbol, %struct.parsed_symbol* %231, i32 0, i32 2
  %233 = load i8*, i8** %232, align 8
  %234 = load i8, i8* %233, align 1
  %235 = sext i8 %234 to i32
  %236 = call i32 @ERR(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.65, i64 0, i64 0), i32 %235)
  br label %237

237:                                              ; preds = %230, %229, %228, %227, %204, %191
  br label %252

238:                                              ; preds = %133
  store i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.66, i64 0, i64 0), i8** %7, align 8
  br label %252

239:                                              ; preds = %133
  store i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.67, i64 0, i64 0), i8** %7, align 8
  br label %252

240:                                              ; preds = %133
  store i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.68, i64 0, i64 0), i8** %7, align 8
  br label %252

241:                                              ; preds = %133
  store i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.69, i64 0, i64 0), i8** %7, align 8
  br label %252

242:                                              ; preds = %133
  store i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.70, i64 0, i64 0), i8** %7, align 8
  br label %252

243:                                              ; preds = %133
  store i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.71, i64 0, i64 0), i8** %7, align 8
  br label %252

244:                                              ; preds = %133
  %245 = load %struct.parsed_symbol*, %struct.parsed_symbol** %3, align 8
  %246 = getelementptr inbounds %struct.parsed_symbol, %struct.parsed_symbol* %245, i32 0, i32 2
  %247 = load i8*, i8** %246, align 8
  %248 = load i8, i8* %247, align 1
  %249 = sext i8 %248 to i32
  %250 = call i32 @ERR(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.72, i64 0, i64 0), i32 %249)
  %251 = load i32, i32* @FALSE, align 4
  store i32 %251, i32* %2, align 4
  br label %485

252:                                              ; preds = %243, %242, %241, %240, %239, %238, %237, %164, %163, %162, %161, %160, %159, %158, %157, %156, %155, %154, %153, %152, %151, %150, %149, %148, %147, %146, %145, %144, %143, %142, %141, %140
  br label %261

253:                                              ; preds = %90
  %254 = load %struct.parsed_symbol*, %struct.parsed_symbol** %3, align 8
  %255 = getelementptr inbounds %struct.parsed_symbol, %struct.parsed_symbol* %254, i32 0, i32 2
  %256 = load i8*, i8** %255, align 8
  %257 = load i8, i8* %256, align 1
  %258 = sext i8 %257 to i32
  %259 = call i32 @ERR(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.73, i64 0, i64 0), i32 %258)
  %260 = load i32, i32* @FALSE, align 4
  store i32 %260, i32* %2, align 4
  br label %485

261:                                              ; preds = %252, %132, %131, %130, %129, %128, %127, %126, %125, %124, %123, %122, %121, %120, %119, %118, %117, %116, %115, %114, %113, %112, %111, %110, %109, %108, %107, %106, %105, %104, %103, %102, %101, %100, %99, %98, %97
  %262 = load %struct.parsed_symbol*, %struct.parsed_symbol** %3, align 8
  %263 = getelementptr inbounds %struct.parsed_symbol, %struct.parsed_symbol* %262, i32 0, i32 2
  %264 = load i8*, i8** %263, align 8
  %265 = getelementptr inbounds i8, i8* %264, i32 1
  store i8* %265, i8** %263, align 8
  %266 = load i32, i32* %5, align 4
  switch i32 %266, label %297 [
    i32 1, label %267
    i32 2, label %267
    i32 4, label %276
    i32 6, label %281
  ]

267:                                              ; preds = %261, %261
  %268 = load %struct.parsed_symbol*, %struct.parsed_symbol** %3, align 8
  %269 = load %struct.parsed_symbol*, %struct.parsed_symbol** %3, align 8
  %270 = getelementptr inbounds %struct.parsed_symbol, %struct.parsed_symbol* %269, i32 0, i32 4
  %271 = call i32 @str_array_push(%struct.parsed_symbol* %268, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @symbol_demangle.dashed_null, i64 0, i64 0), i32 -1, %struct.TYPE_4__* %270)
  %272 = icmp ne i32 %271, 0
  br i1 %272, label %275, label %273

273:                                              ; preds = %267
  %274 = load i32, i32* @FALSE, align 4
  store i32 %274, i32* %2, align 4
  br label %485

275:                                              ; preds = %267
  br label %307

276:                                              ; preds = %261
  %277 = load i8*, i8** %7, align 8
  %278 = load %struct.parsed_symbol*, %struct.parsed_symbol** %3, align 8
  %279 = getelementptr inbounds %struct.parsed_symbol, %struct.parsed_symbol* %278, i32 0, i32 1
  store i8* %277, i8** %279, align 8
  %280 = load i32, i32* @TRUE, align 4
  store i32 %280, i32* %4, align 4
  br label %469

281:                                              ; preds = %261
  %282 = call i32 @str_array_init(%struct.array* %15)
  %283 = load %struct.parsed_symbol*, %struct.parsed_symbol** %3, align 8
  %284 = load i32, i32* @FALSE, align 4
  %285 = call i8* @get_args(%struct.parsed_symbol* %283, %struct.array* %15, i32 %284, i8 signext 60, i8 signext 62)
  store i8* %285, i8** %14, align 8
  %286 = load i8*, i8** %14, align 8
  %287 = icmp ne i8* %286, null
  br i1 %287, label %288, label %293

288:                                              ; preds = %281
  %289 = load %struct.parsed_symbol*, %struct.parsed_symbol** %3, align 8
  %290 = load i8*, i8** %7, align 8
  %291 = load i8*, i8** %14, align 8
  %292 = call i8* (%struct.parsed_symbol*, i8*, i8*, ...) @str_printf(%struct.parsed_symbol* %289, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i8* %290, i8* %291)
  store i8* %292, i8** %7, align 8
  br label %293

293:                                              ; preds = %288, %281
  %294 = load %struct.parsed_symbol*, %struct.parsed_symbol** %3, align 8
  %295 = getelementptr inbounds %struct.parsed_symbol, %struct.parsed_symbol* %294, i32 0, i32 3
  %296 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %295, i32 0, i32 1
  store i32 0, i32* %296, align 4
  br label %297

297:                                              ; preds = %261, %293
  %298 = load %struct.parsed_symbol*, %struct.parsed_symbol** %3, align 8
  %299 = load i8*, i8** %7, align 8
  %300 = load %struct.parsed_symbol*, %struct.parsed_symbol** %3, align 8
  %301 = getelementptr inbounds %struct.parsed_symbol, %struct.parsed_symbol* %300, i32 0, i32 4
  %302 = call i32 @str_array_push(%struct.parsed_symbol* %298, i8* %299, i32 -1, %struct.TYPE_4__* %301)
  %303 = icmp ne i32 %302, 0
  br i1 %303, label %306, label %304

304:                                              ; preds = %297
  %305 = load i32, i32* @FALSE, align 4
  store i32 %305, i32* %2, align 4
  br label %485

306:                                              ; preds = %297
  br label %307

307:                                              ; preds = %306, %275
  br label %344

308:                                              ; preds = %69, %50
  %309 = load %struct.parsed_symbol*, %struct.parsed_symbol** %3, align 8
  %310 = getelementptr inbounds %struct.parsed_symbol, %struct.parsed_symbol* %309, i32 0, i32 2
  %311 = load i8*, i8** %310, align 8
  %312 = load i8, i8* %311, align 1
  %313 = sext i8 %312 to i32
  %314 = icmp eq i32 %313, 36
  br i1 %314, label %315, label %326

315:                                              ; preds = %308
  %316 = load %struct.parsed_symbol*, %struct.parsed_symbol** %3, align 8
  %317 = getelementptr inbounds %struct.parsed_symbol, %struct.parsed_symbol* %316, i32 0, i32 2
  %318 = load i8*, i8** %317, align 8
  %319 = getelementptr inbounds i8, i8* %318, i32 1
  store i8* %319, i8** %317, align 8
  %320 = load %struct.parsed_symbol*, %struct.parsed_symbol** %3, align 8
  %321 = call i8* @get_template_name(%struct.parsed_symbol* %320)
  %322 = load %struct.parsed_symbol*, %struct.parsed_symbol** %3, align 8
  %323 = getelementptr inbounds %struct.parsed_symbol, %struct.parsed_symbol* %322, i32 0, i32 1
  store i8* %321, i8** %323, align 8
  %324 = icmp ne i8* %321, null
  %325 = zext i1 %324 to i32
  store i32 %325, i32* %4, align 4
  br label %469

326:                                              ; preds = %308
  %327 = load %struct.parsed_symbol*, %struct.parsed_symbol** %3, align 8
  %328 = getelementptr inbounds %struct.parsed_symbol, %struct.parsed_symbol* %327, i32 0, i32 2
  %329 = load i8*, i8** %328, align 8
  %330 = load i8, i8* %329, align 1
  %331 = sext i8 %330 to i32
  %332 = icmp eq i32 %331, 63
  br i1 %332, label %333, label %342

333:                                              ; preds = %326
  %334 = load %struct.parsed_symbol*, %struct.parsed_symbol** %3, align 8
  %335 = getelementptr inbounds %struct.parsed_symbol, %struct.parsed_symbol* %334, i32 0, i32 2
  %336 = load i8*, i8** %335, align 8
  %337 = getelementptr inbounds i8, i8* %336, i64 1
  %338 = load i8, i8* %337, align 1
  %339 = sext i8 %338 to i32
  %340 = icmp eq i32 %339, 36
  br i1 %340, label %341, label %342

341:                                              ; preds = %333
  store i32 5, i32* %5, align 4
  br label %342

342:                                              ; preds = %341, %333, %326
  br label %343

343:                                              ; preds = %342
  br label %344

344:                                              ; preds = %343, %307
  %345 = load %struct.parsed_symbol*, %struct.parsed_symbol** %3, align 8
  %346 = getelementptr inbounds %struct.parsed_symbol, %struct.parsed_symbol* %345, i32 0, i32 2
  %347 = load i8*, i8** %346, align 8
  %348 = load i8, i8* %347, align 1
  %349 = sext i8 %348 to i32
  switch i32 %349, label %356 [
    i32 64, label %350
    i32 36, label %355
  ]

350:                                              ; preds = %344
  %351 = load %struct.parsed_symbol*, %struct.parsed_symbol** %3, align 8
  %352 = getelementptr inbounds %struct.parsed_symbol, %struct.parsed_symbol* %351, i32 0, i32 2
  %353 = load i8*, i8** %352, align 8
  %354 = getelementptr inbounds i8, i8* %353, i32 1
  store i8* %354, i8** %352, align 8
  br label %362

355:                                              ; preds = %344
  br label %362

356:                                              ; preds = %344
  %357 = load %struct.parsed_symbol*, %struct.parsed_symbol** %3, align 8
  %358 = call i32 @get_class(%struct.parsed_symbol* %357)
  %359 = icmp ne i32 %358, 0
  br i1 %359, label %361, label %360

360:                                              ; preds = %356
  br label %469

361:                                              ; preds = %356
  br label %362

362:                                              ; preds = %361, %355, %350
  %363 = load i32, i32* %5, align 4
  switch i32 %363, label %365 [
    i32 0, label %364
    i32 1, label %366
    i32 2, label %366
    i32 3, label %408
    i32 5, label %415
  ]

364:                                              ; preds = %362
  br label %365

365:                                              ; preds = %362, %364
  br label %421

366:                                              ; preds = %362, %362
  %367 = load %struct.parsed_symbol*, %struct.parsed_symbol** %3, align 8
  %368 = getelementptr inbounds %struct.parsed_symbol, %struct.parsed_symbol* %367, i32 0, i32 4
  %369 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %368, i32 0, i32 0
  %370 = load i32, i32* %369, align 8
  %371 = icmp sle i32 %370, 1
  br i1 %371, label %372, label %373

372:                                              ; preds = %366
  br label %469

373:                                              ; preds = %366
  %374 = load i32, i32* %5, align 4
  %375 = icmp eq i32 %374, 1
  br i1 %375, label %376, label %388

376:                                              ; preds = %373
  %377 = load %struct.parsed_symbol*, %struct.parsed_symbol** %3, align 8
  %378 = getelementptr inbounds %struct.parsed_symbol, %struct.parsed_symbol* %377, i32 0, i32 4
  %379 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %378, i32 0, i32 1
  %380 = load i8**, i8*** %379, align 8
  %381 = getelementptr inbounds i8*, i8** %380, i64 1
  %382 = load i8*, i8** %381, align 8
  %383 = load %struct.parsed_symbol*, %struct.parsed_symbol** %3, align 8
  %384 = getelementptr inbounds %struct.parsed_symbol, %struct.parsed_symbol* %383, i32 0, i32 4
  %385 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %384, i32 0, i32 1
  %386 = load i8**, i8*** %385, align 8
  %387 = getelementptr inbounds i8*, i8** %386, i64 0
  store i8* %382, i8** %387, align 8
  br label %402

388:                                              ; preds = %373
  %389 = load %struct.parsed_symbol*, %struct.parsed_symbol** %3, align 8
  %390 = load %struct.parsed_symbol*, %struct.parsed_symbol** %3, align 8
  %391 = getelementptr inbounds %struct.parsed_symbol, %struct.parsed_symbol* %390, i32 0, i32 4
  %392 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %391, i32 0, i32 1
  %393 = load i8**, i8*** %392, align 8
  %394 = getelementptr inbounds i8*, i8** %393, i64 1
  %395 = load i8*, i8** %394, align 8
  %396 = call i8* (%struct.parsed_symbol*, i8*, i8*, ...) @str_printf(%struct.parsed_symbol* %389, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.74, i64 0, i64 0), i8* %395)
  %397 = load %struct.parsed_symbol*, %struct.parsed_symbol** %3, align 8
  %398 = getelementptr inbounds %struct.parsed_symbol, %struct.parsed_symbol* %397, i32 0, i32 4
  %399 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %398, i32 0, i32 1
  %400 = load i8**, i8*** %399, align 8
  %401 = getelementptr inbounds i8*, i8** %400, i64 0
  store i8* %396, i8** %401, align 8
  br label %402

402:                                              ; preds = %388, %376
  %403 = load i32, i32* @UNDNAME_NO_FUNCTION_RETURNS, align 4
  %404 = load %struct.parsed_symbol*, %struct.parsed_symbol** %3, align 8
  %405 = getelementptr inbounds %struct.parsed_symbol, %struct.parsed_symbol* %404, i32 0, i32 0
  %406 = load i32, i32* %405, align 8
  %407 = or i32 %406, %403
  store i32 %407, i32* %405, align 8
  br label %421

408:                                              ; preds = %362
  %409 = load i32, i32* @UNDNAME_NO_FUNCTION_RETURNS, align 4
  %410 = xor i32 %409, -1
  %411 = load %struct.parsed_symbol*, %struct.parsed_symbol** %3, align 8
  %412 = getelementptr inbounds %struct.parsed_symbol, %struct.parsed_symbol* %411, i32 0, i32 0
  %413 = load i32, i32* %412, align 8
  %414 = and i32 %413, %410
  store i32 %414, i32* %412, align 8
  br label %421

415:                                              ; preds = %362
  %416 = load %struct.parsed_symbol*, %struct.parsed_symbol** %3, align 8
  %417 = getelementptr inbounds %struct.parsed_symbol, %struct.parsed_symbol* %416, i32 0, i32 3
  %418 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %417, i32 0, i32 0
  %419 = load i32, i32* %418, align 8
  %420 = add nsw i32 %419, 1
  store i32 %420, i32* %418, align 8
  br label %421

421:                                              ; preds = %415, %408, %402, %365
  %422 = load %struct.parsed_symbol*, %struct.parsed_symbol** %3, align 8
  %423 = getelementptr inbounds %struct.parsed_symbol, %struct.parsed_symbol* %422, i32 0, i32 2
  %424 = load i8*, i8** %423, align 8
  %425 = load i8, i8* %424, align 1
  %426 = sext i8 %425 to i32
  %427 = icmp sge i32 %426, 48
  br i1 %427, label %428, label %438

428:                                              ; preds = %421
  %429 = load %struct.parsed_symbol*, %struct.parsed_symbol** %3, align 8
  %430 = getelementptr inbounds %struct.parsed_symbol, %struct.parsed_symbol* %429, i32 0, i32 2
  %431 = load i8*, i8** %430, align 8
  %432 = load i8, i8* %431, align 1
  %433 = sext i8 %432 to i32
  %434 = icmp sle i32 %433, 57
  br i1 %434, label %435, label %438

435:                                              ; preds = %428
  %436 = load %struct.parsed_symbol*, %struct.parsed_symbol** %3, align 8
  %437 = call i32 @handle_data(%struct.parsed_symbol* %436)
  store i32 %437, i32* %4, align 4
  br label %468

438:                                              ; preds = %428, %421
  %439 = load %struct.parsed_symbol*, %struct.parsed_symbol** %3, align 8
  %440 = getelementptr inbounds %struct.parsed_symbol, %struct.parsed_symbol* %439, i32 0, i32 2
  %441 = load i8*, i8** %440, align 8
  %442 = load i8, i8* %441, align 1
  %443 = sext i8 %442 to i32
  %444 = icmp sge i32 %443, 65
  br i1 %444, label %445, label %452

445:                                              ; preds = %438
  %446 = load %struct.parsed_symbol*, %struct.parsed_symbol** %3, align 8
  %447 = getelementptr inbounds %struct.parsed_symbol, %struct.parsed_symbol* %446, i32 0, i32 2
  %448 = load i8*, i8** %447, align 8
  %449 = load i8, i8* %448, align 1
  %450 = sext i8 %449 to i32
  %451 = icmp sle i32 %450, 90
  br i1 %451, label %459, label %452

452:                                              ; preds = %445, %438
  %453 = load %struct.parsed_symbol*, %struct.parsed_symbol** %3, align 8
  %454 = getelementptr inbounds %struct.parsed_symbol, %struct.parsed_symbol* %453, i32 0, i32 2
  %455 = load i8*, i8** %454, align 8
  %456 = load i8, i8* %455, align 1
  %457 = sext i8 %456 to i32
  %458 = icmp eq i32 %457, 36
  br i1 %458, label %459, label %465

459:                                              ; preds = %452, %445
  %460 = load %struct.parsed_symbol*, %struct.parsed_symbol** %3, align 8
  %461 = load i32, i32* %5, align 4
  %462 = icmp eq i32 %461, 3
  %463 = zext i1 %462 to i32
  %464 = call i32 @handle_method(%struct.parsed_symbol* %460, i32 %463)
  store i32 %464, i32* %4, align 4
  br label %467

465:                                              ; preds = %452
  %466 = load i32, i32* @FALSE, align 4
  store i32 %466, i32* %4, align 4
  br label %467

467:                                              ; preds = %465, %459
  br label %468

468:                                              ; preds = %467, %435
  br label %469

469:                                              ; preds = %468, %372, %360, %315, %276, %190, %40
  %470 = load i32, i32* %4, align 4
  %471 = icmp ne i32 %470, 0
  br i1 %471, label %472, label %477

472:                                              ; preds = %469
  %473 = load %struct.parsed_symbol*, %struct.parsed_symbol** %3, align 8
  %474 = getelementptr inbounds %struct.parsed_symbol, %struct.parsed_symbol* %473, i32 0, i32 1
  %475 = load i8*, i8** %474, align 8
  %476 = call i32 @assert(i8* %475)
  br label %483

477:                                              ; preds = %469
  %478 = load %struct.parsed_symbol*, %struct.parsed_symbol** %3, align 8
  %479 = getelementptr inbounds %struct.parsed_symbol, %struct.parsed_symbol* %478, i32 0, i32 2
  %480 = load i8*, i8** %479, align 8
  %481 = call i32 @debugstr_a(i8* %480)
  %482 = call i32 @WARN(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.75, i64 0, i64 0), i32 %481)
  br label %483

483:                                              ; preds = %477, %472
  %484 = load i32, i32* %4, align 4
  store i32 %484, i32* %2, align 4
  br label %485

485:                                              ; preds = %483, %304, %273, %253, %244, %48
  %486 = load i32, i32* %2, align 4
  ret i32 %486
}

declare dso_local i64 @demangle_datatype(%struct.parsed_symbol*, %struct.datatype_t*, %struct.array*, i32) #1

declare dso_local i8* @str_printf(%struct.parsed_symbol*, i8*, i8*, ...) #1

declare dso_local i32 @str_array_init(%struct.array*) #1

declare dso_local i8* @get_number(%struct.parsed_symbol*) #1

declare dso_local i32 @ERR(i8*, i32) #1

declare dso_local i32 @str_array_push(%struct.parsed_symbol*, i8*, i32, %struct.TYPE_4__*) #1

declare dso_local i8* @get_args(%struct.parsed_symbol*, %struct.array*, i32, i8 signext, i8 signext) #1

declare dso_local i8* @get_template_name(%struct.parsed_symbol*) #1

declare dso_local i32 @get_class(%struct.parsed_symbol*) #1

declare dso_local i32 @handle_data(%struct.parsed_symbol*) #1

declare dso_local i32 @handle_method(%struct.parsed_symbol*, i32) #1

declare dso_local i32 @assert(i8*) #1

declare dso_local i32 @WARN(i8*, i32) #1

declare dso_local i32 @debugstr_a(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
