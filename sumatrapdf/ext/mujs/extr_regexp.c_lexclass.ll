; ModuleID = '/home/carl/AnghaBench/sumatrapdf/ext/mujs/extr_regexp.c_lexclass.c'
source_filename = "/home/carl/AnghaBench/sumatrapdf/ext/mujs/extr_regexp.c_lexclass.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cstate = type { i8 }

@L_CCLASS = common dso_local global i32 0, align 4
@L_NCCLASS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [29 x i8] c"unterminated character class\00", align 1
@.str.1 = private unnamed_addr constant [7 x i8] c"DSWdsw\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cstate*)* @lexclass to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @lexclass(%struct.cstate* %0) #0 {
  %2 = alloca %struct.cstate*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i8, align 1
  store %struct.cstate* %0, %struct.cstate** %2, align 8
  %8 = load i32, i32* @L_CCLASS, align 4
  store i32 %8, i32* %3, align 4
  store i8 0, i8* %7, align 1
  %9 = load %struct.cstate*, %struct.cstate** %2, align 8
  %10 = call i32 @newcclass(%struct.cstate* %9)
  %11 = load %struct.cstate*, %struct.cstate** %2, align 8
  %12 = call i32 @nextrune(%struct.cstate* %11)
  store i32 %12, i32* %4, align 4
  %13 = load i32, i32* %4, align 4
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %25, label %15

15:                                               ; preds = %1
  %16 = load %struct.cstate*, %struct.cstate** %2, align 8
  %17 = getelementptr inbounds %struct.cstate, %struct.cstate* %16, i32 0, i32 0
  %18 = load i8, i8* %17, align 1
  %19 = sext i8 %18 to i32
  %20 = icmp eq i32 %19, 94
  br i1 %20, label %21, label %25

21:                                               ; preds = %15
  %22 = load i32, i32* @L_NCCLASS, align 4
  store i32 %22, i32* %3, align 4
  %23 = load %struct.cstate*, %struct.cstate** %2, align 8
  %24 = call i32 @nextrune(%struct.cstate* %23)
  store i32 %24, i32* %4, align 4
  br label %25

25:                                               ; preds = %21, %15, %1
  store i32 0, i32* %6, align 4
  store i32 0, i32* %5, align 4
  br label %26

26:                                               ; preds = %166, %25
  %27 = load %struct.cstate*, %struct.cstate** %2, align 8
  %28 = getelementptr inbounds %struct.cstate, %struct.cstate* %27, i32 0, i32 0
  %29 = load i8, i8* %28, align 1
  %30 = sext i8 %29 to i32
  %31 = icmp eq i32 %30, 0
  br i1 %31, label %32, label %35

32:                                               ; preds = %26
  %33 = load %struct.cstate*, %struct.cstate** %2, align 8
  %34 = call i32 @die(%struct.cstate* %33, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0))
  br label %35

35:                                               ; preds = %32, %26
  %36 = load i32, i32* %4, align 4
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %45, label %38

38:                                               ; preds = %35
  %39 = load %struct.cstate*, %struct.cstate** %2, align 8
  %40 = getelementptr inbounds %struct.cstate, %struct.cstate* %39, i32 0, i32 0
  %41 = load i8, i8* %40, align 1
  %42 = sext i8 %41 to i32
  %43 = icmp eq i32 %42, 93
  br i1 %43, label %44, label %45

44:                                               ; preds = %38
  br label %169

45:                                               ; preds = %38, %35
  %46 = load i32, i32* %4, align 4
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %68, label %48

48:                                               ; preds = %45
  %49 = load %struct.cstate*, %struct.cstate** %2, align 8
  %50 = getelementptr inbounds %struct.cstate, %struct.cstate* %49, i32 0, i32 0
  %51 = load i8, i8* %50, align 1
  %52 = sext i8 %51 to i32
  %53 = icmp eq i32 %52, 45
  br i1 %53, label %54, label %68

54:                                               ; preds = %48
  %55 = load i32, i32* %5, align 4
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %66

57:                                               ; preds = %54
  %58 = load i32, i32* %6, align 4
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %60, label %64

60:                                               ; preds = %57
  %61 = load %struct.cstate*, %struct.cstate** %2, align 8
  %62 = load i8, i8* %7, align 1
  %63 = call i32 @addrange(%struct.cstate* %61, i8 signext %62, i8 signext 45)
  store i32 0, i32* %6, align 4
  store i32 0, i32* %5, align 4
  br label %65

64:                                               ; preds = %57
  store i32 1, i32* %6, align 4
  br label %65

65:                                               ; preds = %64, %60
  br label %67

66:                                               ; preds = %54
  store i8 45, i8* %7, align 1
  store i32 1, i32* %5, align 4
  br label %67

67:                                               ; preds = %66, %65
  br label %166

68:                                               ; preds = %48, %45
  %69 = load i32, i32* %4, align 4
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %71, label %115

71:                                               ; preds = %68
  %72 = load %struct.cstate*, %struct.cstate** %2, align 8
  %73 = getelementptr inbounds %struct.cstate, %struct.cstate* %72, i32 0, i32 0
  %74 = load i8, i8* %73, align 1
  %75 = call i64 @strchr(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0), i8 signext %74)
  %76 = icmp ne i64 %75, 0
  br i1 %76, label %77, label %115

77:                                               ; preds = %71
  %78 = load i32, i32* %5, align 4
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %80, label %91

80:                                               ; preds = %77
  %81 = load %struct.cstate*, %struct.cstate** %2, align 8
  %82 = load i8, i8* %7, align 1
  %83 = load i8, i8* %7, align 1
  %84 = call i32 @addrange(%struct.cstate* %81, i8 signext %82, i8 signext %83)
  %85 = load i32, i32* %6, align 4
  %86 = icmp ne i32 %85, 0
  br i1 %86, label %87, label %90

87:                                               ; preds = %80
  %88 = load %struct.cstate*, %struct.cstate** %2, align 8
  %89 = call i32 @addrange(%struct.cstate* %88, i8 signext 45, i8 signext 45)
  br label %90

90:                                               ; preds = %87, %80
  br label %91

91:                                               ; preds = %90, %77
  %92 = load %struct.cstate*, %struct.cstate** %2, align 8
  %93 = getelementptr inbounds %struct.cstate, %struct.cstate* %92, i32 0, i32 0
  %94 = load i8, i8* %93, align 1
  %95 = sext i8 %94 to i32
  switch i32 %95, label %114 [
    i32 100, label %96
    i32 115, label %99
    i32 119, label %102
    i32 68, label %105
    i32 83, label %108
    i32 87, label %111
  ]

96:                                               ; preds = %91
  %97 = load %struct.cstate*, %struct.cstate** %2, align 8
  %98 = call i32 @addranges_d(%struct.cstate* %97)
  br label %114

99:                                               ; preds = %91
  %100 = load %struct.cstate*, %struct.cstate** %2, align 8
  %101 = call i32 @addranges_s(%struct.cstate* %100)
  br label %114

102:                                              ; preds = %91
  %103 = load %struct.cstate*, %struct.cstate** %2, align 8
  %104 = call i32 @addranges_w(%struct.cstate* %103)
  br label %114

105:                                              ; preds = %91
  %106 = load %struct.cstate*, %struct.cstate** %2, align 8
  %107 = call i32 @addranges_D(%struct.cstate* %106)
  br label %114

108:                                              ; preds = %91
  %109 = load %struct.cstate*, %struct.cstate** %2, align 8
  %110 = call i32 @addranges_S(%struct.cstate* %109)
  br label %114

111:                                              ; preds = %91
  %112 = load %struct.cstate*, %struct.cstate** %2, align 8
  %113 = call i32 @addranges_W(%struct.cstate* %112)
  br label %114

114:                                              ; preds = %91, %111, %108, %105, %102, %99, %96
  store i32 0, i32* %6, align 4
  store i32 0, i32* %5, align 4
  br label %165

115:                                              ; preds = %71, %68
  %116 = load i32, i32* %4, align 4
  %117 = icmp ne i32 %116, 0
  br i1 %117, label %118, label %138

118:                                              ; preds = %115
  %119 = load %struct.cstate*, %struct.cstate** %2, align 8
  %120 = getelementptr inbounds %struct.cstate, %struct.cstate* %119, i32 0, i32 0
  %121 = load i8, i8* %120, align 1
  %122 = sext i8 %121 to i32
  %123 = icmp eq i32 %122, 98
  br i1 %123, label %124, label %127

124:                                              ; preds = %118
  %125 = load %struct.cstate*, %struct.cstate** %2, align 8
  %126 = getelementptr inbounds %struct.cstate, %struct.cstate* %125, i32 0, i32 0
  store i8 8, i8* %126, align 1
  br label %137

127:                                              ; preds = %118
  %128 = load %struct.cstate*, %struct.cstate** %2, align 8
  %129 = getelementptr inbounds %struct.cstate, %struct.cstate* %128, i32 0, i32 0
  %130 = load i8, i8* %129, align 1
  %131 = sext i8 %130 to i32
  %132 = icmp eq i32 %131, 48
  br i1 %132, label %133, label %136

133:                                              ; preds = %127
  %134 = load %struct.cstate*, %struct.cstate** %2, align 8
  %135 = getelementptr inbounds %struct.cstate, %struct.cstate* %134, i32 0, i32 0
  store i8 0, i8* %135, align 1
  br label %136

136:                                              ; preds = %133, %127
  br label %137

137:                                              ; preds = %136, %124
  br label %138

138:                                              ; preds = %137, %115
  %139 = load i32, i32* %5, align 4
  %140 = icmp ne i32 %139, 0
  br i1 %140, label %141, label %160

141:                                              ; preds = %138
  %142 = load i32, i32* %6, align 4
  %143 = icmp ne i32 %142, 0
  br i1 %143, label %144, label %151

144:                                              ; preds = %141
  %145 = load %struct.cstate*, %struct.cstate** %2, align 8
  %146 = load i8, i8* %7, align 1
  %147 = load %struct.cstate*, %struct.cstate** %2, align 8
  %148 = getelementptr inbounds %struct.cstate, %struct.cstate* %147, i32 0, i32 0
  %149 = load i8, i8* %148, align 1
  %150 = call i32 @addrange(%struct.cstate* %145, i8 signext %146, i8 signext %149)
  store i32 0, i32* %6, align 4
  store i32 0, i32* %5, align 4
  br label %159

151:                                              ; preds = %141
  %152 = load %struct.cstate*, %struct.cstate** %2, align 8
  %153 = load i8, i8* %7, align 1
  %154 = load i8, i8* %7, align 1
  %155 = call i32 @addrange(%struct.cstate* %152, i8 signext %153, i8 signext %154)
  %156 = load %struct.cstate*, %struct.cstate** %2, align 8
  %157 = getelementptr inbounds %struct.cstate, %struct.cstate* %156, i32 0, i32 0
  %158 = load i8, i8* %157, align 1
  store i8 %158, i8* %7, align 1
  br label %159

159:                                              ; preds = %151, %144
  br label %164

160:                                              ; preds = %138
  %161 = load %struct.cstate*, %struct.cstate** %2, align 8
  %162 = getelementptr inbounds %struct.cstate, %struct.cstate* %161, i32 0, i32 0
  %163 = load i8, i8* %162, align 1
  store i8 %163, i8* %7, align 1
  store i32 1, i32* %5, align 4
  br label %164

164:                                              ; preds = %160, %159
  br label %165

165:                                              ; preds = %164, %114
  br label %166

166:                                              ; preds = %165, %67
  %167 = load %struct.cstate*, %struct.cstate** %2, align 8
  %168 = call i32 @nextrune(%struct.cstate* %167)
  store i32 %168, i32* %4, align 4
  br label %26

169:                                              ; preds = %44
  %170 = load i32, i32* %5, align 4
  %171 = icmp ne i32 %170, 0
  br i1 %171, label %172, label %183

172:                                              ; preds = %169
  %173 = load %struct.cstate*, %struct.cstate** %2, align 8
  %174 = load i8, i8* %7, align 1
  %175 = load i8, i8* %7, align 1
  %176 = call i32 @addrange(%struct.cstate* %173, i8 signext %174, i8 signext %175)
  %177 = load i32, i32* %6, align 4
  %178 = icmp ne i32 %177, 0
  br i1 %178, label %179, label %182

179:                                              ; preds = %172
  %180 = load %struct.cstate*, %struct.cstate** %2, align 8
  %181 = call i32 @addrange(%struct.cstate* %180, i8 signext 45, i8 signext 45)
  br label %182

182:                                              ; preds = %179, %172
  br label %183

183:                                              ; preds = %182, %169
  %184 = load i32, i32* %3, align 4
  ret i32 %184
}

declare dso_local i32 @newcclass(%struct.cstate*) #1

declare dso_local i32 @nextrune(%struct.cstate*) #1

declare dso_local i32 @die(%struct.cstate*, i8*) #1

declare dso_local i32 @addrange(%struct.cstate*, i8 signext, i8 signext) #1

declare dso_local i64 @strchr(i8*, i8 signext) #1

declare dso_local i32 @addranges_d(%struct.cstate*) #1

declare dso_local i32 @addranges_s(%struct.cstate*) #1

declare dso_local i32 @addranges_w(%struct.cstate*) #1

declare dso_local i32 @addranges_D(%struct.cstate*) #1

declare dso_local i32 @addranges_S(%struct.cstate*) #1

declare dso_local i32 @addranges_W(%struct.cstate*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
