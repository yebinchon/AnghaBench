; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/winetests/user32/extr_msg.c_get_winpos_flags.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/winetests/user32/extr_msg.c_get_winpos_flags.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@get_winpos_flags.buffer = internal global [300 x i8] zeroinitializer, align 16
@SWP_SHOWWINDOW = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [16 x i8] c"|SWP_SHOWWINDOW\00", align 1
@SWP_HIDEWINDOW = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [16 x i8] c"|SWP_HIDEWINDOW\00", align 1
@SWP_NOACTIVATE = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [16 x i8] c"|SWP_NOACTIVATE\00", align 1
@SWP_FRAMECHANGED = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [18 x i8] c"|SWP_FRAMECHANGED\00", align 1
@SWP_NOCOPYBITS = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [16 x i8] c"|SWP_NOCOPYBITS\00", align 1
@SWP_NOOWNERZORDER = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [19 x i8] c"|SWP_NOOWNERZORDER\00", align 1
@SWP_NOSENDCHANGING = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [20 x i8] c"|SWP_NOSENDCHANGING\00", align 1
@SWP_DEFERERASE = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [16 x i8] c"|SWP_DEFERERASE\00", align 1
@SWP_ASYNCWINDOWPOS = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [20 x i8] c"|SWP_ASYNCWINDOWPOS\00", align 1
@SWP_NOZORDER = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [14 x i8] c"|SWP_NOZORDER\00", align 1
@SWP_NOREDRAW = common dso_local global i32 0, align 4
@.str.10 = private unnamed_addr constant [14 x i8] c"|SWP_NOREDRAW\00", align 1
@SWP_NOSIZE = common dso_local global i32 0, align 4
@.str.11 = private unnamed_addr constant [12 x i8] c"|SWP_NOSIZE\00", align 1
@SWP_NOMOVE = common dso_local global i32 0, align 4
@.str.12 = private unnamed_addr constant [12 x i8] c"|SWP_NOMOVE\00", align 1
@SWP_NOCLIENTSIZE = common dso_local global i32 0, align 4
@.str.13 = private unnamed_addr constant [18 x i8] c"|SWP_NOCLIENTSIZE\00", align 1
@SWP_NOCLIENTMOVE = common dso_local global i32 0, align 4
@.str.14 = private unnamed_addr constant [18 x i8] c"|SWP_NOCLIENTMOVE\00", align 1
@.str.15 = private unnamed_addr constant [8 x i8] c"|0x%04x\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (i32)* @get_winpos_flags to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @get_winpos_flags(i32 %0) #0 {
  %2 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  store i8 0, i8* getelementptr inbounds ([300 x i8], [300 x i8]* @get_winpos_flags.buffer, i64 0, i64 0), align 16
  br label %3

3:                                                ; preds = %1
  %4 = load i32, i32* %2, align 4
  %5 = load i32, i32* @SWP_SHOWWINDOW, align 4
  %6 = and i32 %4, %5
  %7 = icmp ne i32 %6, 0
  br i1 %7, label %8, label %14

8:                                                ; preds = %3
  %9 = call i8* @strcat(i8* getelementptr inbounds ([300 x i8], [300 x i8]* @get_winpos_flags.buffer, i64 0, i64 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0))
  %10 = load i32, i32* @SWP_SHOWWINDOW, align 4
  %11 = xor i32 %10, -1
  %12 = load i32, i32* %2, align 4
  %13 = and i32 %12, %11
  store i32 %13, i32* %2, align 4
  br label %14

14:                                               ; preds = %8, %3
  br label %15

15:                                               ; preds = %14
  br label %16

16:                                               ; preds = %15
  %17 = load i32, i32* %2, align 4
  %18 = load i32, i32* @SWP_HIDEWINDOW, align 4
  %19 = and i32 %17, %18
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %27

21:                                               ; preds = %16
  %22 = call i8* @strcat(i8* getelementptr inbounds ([300 x i8], [300 x i8]* @get_winpos_flags.buffer, i64 0, i64 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i64 0, i64 0))
  %23 = load i32, i32* @SWP_HIDEWINDOW, align 4
  %24 = xor i32 %23, -1
  %25 = load i32, i32* %2, align 4
  %26 = and i32 %25, %24
  store i32 %26, i32* %2, align 4
  br label %27

27:                                               ; preds = %21, %16
  br label %28

28:                                               ; preds = %27
  br label %29

29:                                               ; preds = %28
  %30 = load i32, i32* %2, align 4
  %31 = load i32, i32* @SWP_NOACTIVATE, align 4
  %32 = and i32 %30, %31
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %40

34:                                               ; preds = %29
  %35 = call i8* @strcat(i8* getelementptr inbounds ([300 x i8], [300 x i8]* @get_winpos_flags.buffer, i64 0, i64 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.2, i64 0, i64 0))
  %36 = load i32, i32* @SWP_NOACTIVATE, align 4
  %37 = xor i32 %36, -1
  %38 = load i32, i32* %2, align 4
  %39 = and i32 %38, %37
  store i32 %39, i32* %2, align 4
  br label %40

40:                                               ; preds = %34, %29
  br label %41

41:                                               ; preds = %40
  br label %42

42:                                               ; preds = %41
  %43 = load i32, i32* %2, align 4
  %44 = load i32, i32* @SWP_FRAMECHANGED, align 4
  %45 = and i32 %43, %44
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %53

47:                                               ; preds = %42
  %48 = call i8* @strcat(i8* getelementptr inbounds ([300 x i8], [300 x i8]* @get_winpos_flags.buffer, i64 0, i64 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.3, i64 0, i64 0))
  %49 = load i32, i32* @SWP_FRAMECHANGED, align 4
  %50 = xor i32 %49, -1
  %51 = load i32, i32* %2, align 4
  %52 = and i32 %51, %50
  store i32 %52, i32* %2, align 4
  br label %53

53:                                               ; preds = %47, %42
  br label %54

54:                                               ; preds = %53
  br label %55

55:                                               ; preds = %54
  %56 = load i32, i32* %2, align 4
  %57 = load i32, i32* @SWP_NOCOPYBITS, align 4
  %58 = and i32 %56, %57
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %60, label %66

60:                                               ; preds = %55
  %61 = call i8* @strcat(i8* getelementptr inbounds ([300 x i8], [300 x i8]* @get_winpos_flags.buffer, i64 0, i64 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.4, i64 0, i64 0))
  %62 = load i32, i32* @SWP_NOCOPYBITS, align 4
  %63 = xor i32 %62, -1
  %64 = load i32, i32* %2, align 4
  %65 = and i32 %64, %63
  store i32 %65, i32* %2, align 4
  br label %66

66:                                               ; preds = %60, %55
  br label %67

67:                                               ; preds = %66
  br label %68

68:                                               ; preds = %67
  %69 = load i32, i32* %2, align 4
  %70 = load i32, i32* @SWP_NOOWNERZORDER, align 4
  %71 = and i32 %69, %70
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %73, label %79

73:                                               ; preds = %68
  %74 = call i8* @strcat(i8* getelementptr inbounds ([300 x i8], [300 x i8]* @get_winpos_flags.buffer, i64 0, i64 0), i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.5, i64 0, i64 0))
  %75 = load i32, i32* @SWP_NOOWNERZORDER, align 4
  %76 = xor i32 %75, -1
  %77 = load i32, i32* %2, align 4
  %78 = and i32 %77, %76
  store i32 %78, i32* %2, align 4
  br label %79

79:                                               ; preds = %73, %68
  br label %80

80:                                               ; preds = %79
  br label %81

81:                                               ; preds = %80
  %82 = load i32, i32* %2, align 4
  %83 = load i32, i32* @SWP_NOSENDCHANGING, align 4
  %84 = and i32 %82, %83
  %85 = icmp ne i32 %84, 0
  br i1 %85, label %86, label %92

86:                                               ; preds = %81
  %87 = call i8* @strcat(i8* getelementptr inbounds ([300 x i8], [300 x i8]* @get_winpos_flags.buffer, i64 0, i64 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.6, i64 0, i64 0))
  %88 = load i32, i32* @SWP_NOSENDCHANGING, align 4
  %89 = xor i32 %88, -1
  %90 = load i32, i32* %2, align 4
  %91 = and i32 %90, %89
  store i32 %91, i32* %2, align 4
  br label %92

92:                                               ; preds = %86, %81
  br label %93

93:                                               ; preds = %92
  br label %94

94:                                               ; preds = %93
  %95 = load i32, i32* %2, align 4
  %96 = load i32, i32* @SWP_DEFERERASE, align 4
  %97 = and i32 %95, %96
  %98 = icmp ne i32 %97, 0
  br i1 %98, label %99, label %105

99:                                               ; preds = %94
  %100 = call i8* @strcat(i8* getelementptr inbounds ([300 x i8], [300 x i8]* @get_winpos_flags.buffer, i64 0, i64 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.7, i64 0, i64 0))
  %101 = load i32, i32* @SWP_DEFERERASE, align 4
  %102 = xor i32 %101, -1
  %103 = load i32, i32* %2, align 4
  %104 = and i32 %103, %102
  store i32 %104, i32* %2, align 4
  br label %105

105:                                              ; preds = %99, %94
  br label %106

106:                                              ; preds = %105
  br label %107

107:                                              ; preds = %106
  %108 = load i32, i32* %2, align 4
  %109 = load i32, i32* @SWP_ASYNCWINDOWPOS, align 4
  %110 = and i32 %108, %109
  %111 = icmp ne i32 %110, 0
  br i1 %111, label %112, label %118

112:                                              ; preds = %107
  %113 = call i8* @strcat(i8* getelementptr inbounds ([300 x i8], [300 x i8]* @get_winpos_flags.buffer, i64 0, i64 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.8, i64 0, i64 0))
  %114 = load i32, i32* @SWP_ASYNCWINDOWPOS, align 4
  %115 = xor i32 %114, -1
  %116 = load i32, i32* %2, align 4
  %117 = and i32 %116, %115
  store i32 %117, i32* %2, align 4
  br label %118

118:                                              ; preds = %112, %107
  br label %119

119:                                              ; preds = %118
  br label %120

120:                                              ; preds = %119
  %121 = load i32, i32* %2, align 4
  %122 = load i32, i32* @SWP_NOZORDER, align 4
  %123 = and i32 %121, %122
  %124 = icmp ne i32 %123, 0
  br i1 %124, label %125, label %131

125:                                              ; preds = %120
  %126 = call i8* @strcat(i8* getelementptr inbounds ([300 x i8], [300 x i8]* @get_winpos_flags.buffer, i64 0, i64 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.9, i64 0, i64 0))
  %127 = load i32, i32* @SWP_NOZORDER, align 4
  %128 = xor i32 %127, -1
  %129 = load i32, i32* %2, align 4
  %130 = and i32 %129, %128
  store i32 %130, i32* %2, align 4
  br label %131

131:                                              ; preds = %125, %120
  br label %132

132:                                              ; preds = %131
  br label %133

133:                                              ; preds = %132
  %134 = load i32, i32* %2, align 4
  %135 = load i32, i32* @SWP_NOREDRAW, align 4
  %136 = and i32 %134, %135
  %137 = icmp ne i32 %136, 0
  br i1 %137, label %138, label %144

138:                                              ; preds = %133
  %139 = call i8* @strcat(i8* getelementptr inbounds ([300 x i8], [300 x i8]* @get_winpos_flags.buffer, i64 0, i64 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.10, i64 0, i64 0))
  %140 = load i32, i32* @SWP_NOREDRAW, align 4
  %141 = xor i32 %140, -1
  %142 = load i32, i32* %2, align 4
  %143 = and i32 %142, %141
  store i32 %143, i32* %2, align 4
  br label %144

144:                                              ; preds = %138, %133
  br label %145

145:                                              ; preds = %144
  br label %146

146:                                              ; preds = %145
  %147 = load i32, i32* %2, align 4
  %148 = load i32, i32* @SWP_NOSIZE, align 4
  %149 = and i32 %147, %148
  %150 = icmp ne i32 %149, 0
  br i1 %150, label %151, label %157

151:                                              ; preds = %146
  %152 = call i8* @strcat(i8* getelementptr inbounds ([300 x i8], [300 x i8]* @get_winpos_flags.buffer, i64 0, i64 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.11, i64 0, i64 0))
  %153 = load i32, i32* @SWP_NOSIZE, align 4
  %154 = xor i32 %153, -1
  %155 = load i32, i32* %2, align 4
  %156 = and i32 %155, %154
  store i32 %156, i32* %2, align 4
  br label %157

157:                                              ; preds = %151, %146
  br label %158

158:                                              ; preds = %157
  br label %159

159:                                              ; preds = %158
  %160 = load i32, i32* %2, align 4
  %161 = load i32, i32* @SWP_NOMOVE, align 4
  %162 = and i32 %160, %161
  %163 = icmp ne i32 %162, 0
  br i1 %163, label %164, label %170

164:                                              ; preds = %159
  %165 = call i8* @strcat(i8* getelementptr inbounds ([300 x i8], [300 x i8]* @get_winpos_flags.buffer, i64 0, i64 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.12, i64 0, i64 0))
  %166 = load i32, i32* @SWP_NOMOVE, align 4
  %167 = xor i32 %166, -1
  %168 = load i32, i32* %2, align 4
  %169 = and i32 %168, %167
  store i32 %169, i32* %2, align 4
  br label %170

170:                                              ; preds = %164, %159
  br label %171

171:                                              ; preds = %170
  br label %172

172:                                              ; preds = %171
  %173 = load i32, i32* %2, align 4
  %174 = load i32, i32* @SWP_NOCLIENTSIZE, align 4
  %175 = and i32 %173, %174
  %176 = icmp ne i32 %175, 0
  br i1 %176, label %177, label %183

177:                                              ; preds = %172
  %178 = call i8* @strcat(i8* getelementptr inbounds ([300 x i8], [300 x i8]* @get_winpos_flags.buffer, i64 0, i64 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.13, i64 0, i64 0))
  %179 = load i32, i32* @SWP_NOCLIENTSIZE, align 4
  %180 = xor i32 %179, -1
  %181 = load i32, i32* %2, align 4
  %182 = and i32 %181, %180
  store i32 %182, i32* %2, align 4
  br label %183

183:                                              ; preds = %177, %172
  br label %184

184:                                              ; preds = %183
  br label %185

185:                                              ; preds = %184
  %186 = load i32, i32* %2, align 4
  %187 = load i32, i32* @SWP_NOCLIENTMOVE, align 4
  %188 = and i32 %186, %187
  %189 = icmp ne i32 %188, 0
  br i1 %189, label %190, label %196

190:                                              ; preds = %185
  %191 = call i8* @strcat(i8* getelementptr inbounds ([300 x i8], [300 x i8]* @get_winpos_flags.buffer, i64 0, i64 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.14, i64 0, i64 0))
  %192 = load i32, i32* @SWP_NOCLIENTMOVE, align 4
  %193 = xor i32 %192, -1
  %194 = load i32, i32* %2, align 4
  %195 = and i32 %194, %193
  store i32 %195, i32* %2, align 4
  br label %196

196:                                              ; preds = %190, %185
  br label %197

197:                                              ; preds = %196
  %198 = load i32, i32* %2, align 4
  %199 = icmp ne i32 %198, 0
  br i1 %199, label %200, label %206

200:                                              ; preds = %197
  %201 = call i32 @strlen(i8* getelementptr inbounds ([300 x i8], [300 x i8]* @get_winpos_flags.buffer, i64 0, i64 0))
  %202 = sext i32 %201 to i64
  %203 = getelementptr inbounds i8, i8* getelementptr inbounds ([300 x i8], [300 x i8]* @get_winpos_flags.buffer, i64 0, i64 0), i64 %202
  %204 = load i32, i32* %2, align 4
  %205 = call i32 @sprintf(i8* %203, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.15, i64 0, i64 0), i32 %204)
  br label %206

206:                                              ; preds = %200, %197
  ret i8* getelementptr inbounds ([300 x i8], [300 x i8]* @get_winpos_flags.buffer, i64 0, i64 1)
}

declare dso_local i8* @strcat(i8*, i8*) #1

declare dso_local i32 @sprintf(i8*, i8*, i32) #1

declare dso_local i32 @strlen(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
