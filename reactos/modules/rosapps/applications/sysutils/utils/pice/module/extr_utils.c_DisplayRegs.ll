; ModuleID = '/home/carl/AnghaBench/reactos/modules/rosapps/applications/sysutils/utils/pice/module/extr_utils.c_DisplayRegs.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rosapps/applications/sysutils/utils/pice/module/extr_utils.c_DisplayRegs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@REGISTER_WINDOW = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [5 x i8] c"EAX=\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"%.8X\00", align 1
@CurrentEAX = common dso_local global i64 0, align 8
@OldEAX = common dso_local global i64 0, align 8
@WHITE = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [6 x i8] c" EBX=\00", align 1
@CurrentEBX = common dso_local global i64 0, align 8
@OldEBX = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [6 x i8] c" ECX=\00", align 1
@CurrentECX = common dso_local global i64 0, align 8
@OldECX = common dso_local global i64 0, align 8
@.str.4 = private unnamed_addr constant [6 x i8] c" EDX=\00", align 1
@CurrentEDX = common dso_local global i64 0, align 8
@OldEDX = common dso_local global i64 0, align 8
@COLOR_HILITE = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [6 x i8] c" ESI=\00", align 1
@CurrentESI = common dso_local global i64 0, align 8
@OldESI = common dso_local global i64 0, align 8
@.str.6 = private unnamed_addr constant [6 x i8] c" EDI=\00", align 1
@.str.7 = private unnamed_addr constant [6 x i8] c"%.8X\0A\00", align 1
@CurrentEDI = common dso_local global i64 0, align 8
@OldEDI = common dso_local global i64 0, align 8
@.str.8 = private unnamed_addr constant [5 x i8] c"EBP=\00", align 1
@CurrentEBP = common dso_local global i64 0, align 8
@OldEBP = common dso_local global i64 0, align 8
@.str.9 = private unnamed_addr constant [6 x i8] c" ESP=\00", align 1
@CurrentESP = common dso_local global i64 0, align 8
@OldESP = common dso_local global i64 0, align 8
@.str.10 = private unnamed_addr constant [6 x i8] c" EIP=\00", align 1
@CurrentEIP = common dso_local global i64 0, align 8
@OldEIP = common dso_local global i64 0, align 8
@.str.11 = private unnamed_addr constant [9 x i8] c" EFLAGS=\00", align 1
@CurrentEFL = common dso_local global i64 0, align 8
@OldEFL = common dso_local global i64 0, align 8
@.str.12 = private unnamed_addr constant [5 x i8] c" %s\0A\00", align 1
@.str.13 = private unnamed_addr constant [4 x i8] c"CS=\00", align 1
@.str.14 = private unnamed_addr constant [5 x i8] c"%.4X\00", align 1
@CurrentCS = common dso_local global i64 0, align 8
@OldCS = common dso_local global i64 0, align 8
@.str.15 = private unnamed_addr constant [6 x i8] c"  DS=\00", align 1
@CurrentDS = common dso_local global i64 0, align 8
@OldDS = common dso_local global i64 0, align 8
@.str.16 = private unnamed_addr constant [6 x i8] c"  ES=\00", align 1
@CurrentES = common dso_local global i64 0, align 8
@OldES = common dso_local global i64 0, align 8
@.str.17 = private unnamed_addr constant [6 x i8] c"  FS=\00", align 1
@CurrentFS = common dso_local global i64 0, align 8
@OldFS = common dso_local global i64 0, align 8
@.str.18 = private unnamed_addr constant [6 x i8] c"  GS=\00", align 1
@CurrentGS = common dso_local global i64 0, align 8
@OldGS = common dso_local global i64 0, align 8
@.str.19 = private unnamed_addr constant [6 x i8] c"  SS=\00", align 1
@CurrentSS = common dso_local global i64 0, align 8
@OldSS = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @DisplayRegs() #0 {
  %1 = alloca [48 x i8], align 16
  %2 = call i32 (...) @ENTER_FUNC()
  %3 = load i32, i32* @REGISTER_WINDOW, align 4
  %4 = call i32 @Home(i32 %3)
  %5 = load i32, i32* @REGISTER_WINDOW, align 4
  %6 = call i32 @Print(i32 %5, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0))
  %7 = getelementptr inbounds [48 x i8], [48 x i8]* %1, i64 0, i64 0
  %8 = load i64, i64* @CurrentEAX, align 8
  %9 = call i32 @PICE_sprintf(i8* %7, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i64 %8)
  %10 = load i64, i64* @OldEAX, align 8
  %11 = load i64, i64* @CurrentEAX, align 8
  %12 = icmp ne i64 %10, %11
  br i1 %12, label %13, label %16

13:                                               ; preds = %0
  %14 = load i32, i32* @WHITE, align 4
  %15 = call i32 @SetForegroundColor(i32 %14)
  br label %16

16:                                               ; preds = %13, %0
  %17 = load i32, i32* @REGISTER_WINDOW, align 4
  %18 = getelementptr inbounds [48 x i8], [48 x i8]* %1, i64 0, i64 0
  %19 = call i32 @Print(i32 %17, i8* %18)
  %20 = load i64, i64* @OldEAX, align 8
  %21 = load i64, i64* @CurrentEAX, align 8
  %22 = icmp ne i64 %20, %21
  br i1 %22, label %23, label %25

23:                                               ; preds = %16
  %24 = call i32 (...) @ResetColor()
  br label %25

25:                                               ; preds = %23, %16
  %26 = load i32, i32* @REGISTER_WINDOW, align 4
  %27 = call i32 @Print(i32 %26, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0))
  %28 = getelementptr inbounds [48 x i8], [48 x i8]* %1, i64 0, i64 0
  %29 = load i64, i64* @CurrentEBX, align 8
  %30 = call i32 @PICE_sprintf(i8* %28, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i64 %29)
  %31 = load i64, i64* @OldEBX, align 8
  %32 = load i64, i64* @CurrentEBX, align 8
  %33 = icmp ne i64 %31, %32
  br i1 %33, label %34, label %37

34:                                               ; preds = %25
  %35 = load i32, i32* @WHITE, align 4
  %36 = call i32 @SetForegroundColor(i32 %35)
  br label %37

37:                                               ; preds = %34, %25
  %38 = load i32, i32* @REGISTER_WINDOW, align 4
  %39 = getelementptr inbounds [48 x i8], [48 x i8]* %1, i64 0, i64 0
  %40 = call i32 @Print(i32 %38, i8* %39)
  %41 = load i64, i64* @OldEBX, align 8
  %42 = load i64, i64* @CurrentEBX, align 8
  %43 = icmp ne i64 %41, %42
  br i1 %43, label %44, label %46

44:                                               ; preds = %37
  %45 = call i32 (...) @ResetColor()
  br label %46

46:                                               ; preds = %44, %37
  %47 = load i32, i32* @REGISTER_WINDOW, align 4
  %48 = call i32 @Print(i32 %47, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i64 0, i64 0))
  %49 = getelementptr inbounds [48 x i8], [48 x i8]* %1, i64 0, i64 0
  %50 = load i64, i64* @CurrentECX, align 8
  %51 = call i32 @PICE_sprintf(i8* %49, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i64 %50)
  %52 = load i64, i64* @OldECX, align 8
  %53 = load i64, i64* @CurrentECX, align 8
  %54 = icmp ne i64 %52, %53
  br i1 %54, label %55, label %58

55:                                               ; preds = %46
  %56 = load i32, i32* @WHITE, align 4
  %57 = call i32 @SetForegroundColor(i32 %56)
  br label %58

58:                                               ; preds = %55, %46
  %59 = load i32, i32* @REGISTER_WINDOW, align 4
  %60 = getelementptr inbounds [48 x i8], [48 x i8]* %1, i64 0, i64 0
  %61 = call i32 @Print(i32 %59, i8* %60)
  %62 = load i64, i64* @OldECX, align 8
  %63 = load i64, i64* @CurrentECX, align 8
  %64 = icmp ne i64 %62, %63
  br i1 %64, label %65, label %67

65:                                               ; preds = %58
  %66 = call i32 (...) @ResetColor()
  br label %67

67:                                               ; preds = %65, %58
  %68 = load i32, i32* @REGISTER_WINDOW, align 4
  %69 = call i32 @Print(i32 %68, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.4, i64 0, i64 0))
  %70 = getelementptr inbounds [48 x i8], [48 x i8]* %1, i64 0, i64 0
  %71 = load i64, i64* @CurrentEDX, align 8
  %72 = call i32 @PICE_sprintf(i8* %70, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i64 %71)
  %73 = load i64, i64* @OldEDX, align 8
  %74 = load i64, i64* @CurrentEDX, align 8
  %75 = icmp ne i64 %73, %74
  br i1 %75, label %76, label %79

76:                                               ; preds = %67
  %77 = load i32, i32* @COLOR_HILITE, align 4
  %78 = call i32 @SetForegroundColor(i32 %77)
  br label %79

79:                                               ; preds = %76, %67
  %80 = load i32, i32* @REGISTER_WINDOW, align 4
  %81 = getelementptr inbounds [48 x i8], [48 x i8]* %1, i64 0, i64 0
  %82 = call i32 @Print(i32 %80, i8* %81)
  %83 = load i64, i64* @OldEDX, align 8
  %84 = load i64, i64* @CurrentEDX, align 8
  %85 = icmp ne i64 %83, %84
  br i1 %85, label %86, label %88

86:                                               ; preds = %79
  %87 = call i32 (...) @ResetColor()
  br label %88

88:                                               ; preds = %86, %79
  %89 = load i32, i32* @REGISTER_WINDOW, align 4
  %90 = call i32 @Print(i32 %89, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.5, i64 0, i64 0))
  %91 = getelementptr inbounds [48 x i8], [48 x i8]* %1, i64 0, i64 0
  %92 = load i64, i64* @CurrentESI, align 8
  %93 = call i32 @PICE_sprintf(i8* %91, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i64 %92)
  %94 = load i64, i64* @OldESI, align 8
  %95 = load i64, i64* @CurrentESI, align 8
  %96 = icmp ne i64 %94, %95
  br i1 %96, label %97, label %100

97:                                               ; preds = %88
  %98 = load i32, i32* @COLOR_HILITE, align 4
  %99 = call i32 @SetForegroundColor(i32 %98)
  br label %100

100:                                              ; preds = %97, %88
  %101 = load i32, i32* @REGISTER_WINDOW, align 4
  %102 = getelementptr inbounds [48 x i8], [48 x i8]* %1, i64 0, i64 0
  %103 = call i32 @Print(i32 %101, i8* %102)
  %104 = load i64, i64* @OldESI, align 8
  %105 = load i64, i64* @CurrentESI, align 8
  %106 = icmp ne i64 %104, %105
  br i1 %106, label %107, label %109

107:                                              ; preds = %100
  %108 = call i32 (...) @ResetColor()
  br label %109

109:                                              ; preds = %107, %100
  %110 = load i32, i32* @REGISTER_WINDOW, align 4
  %111 = call i32 @Print(i32 %110, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.6, i64 0, i64 0))
  %112 = getelementptr inbounds [48 x i8], [48 x i8]* %1, i64 0, i64 0
  %113 = load i64, i64* @CurrentEDI, align 8
  %114 = call i32 @PICE_sprintf(i8* %112, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.7, i64 0, i64 0), i64 %113)
  %115 = load i64, i64* @OldEDI, align 8
  %116 = load i64, i64* @CurrentEDI, align 8
  %117 = icmp ne i64 %115, %116
  br i1 %117, label %118, label %121

118:                                              ; preds = %109
  %119 = load i32, i32* @COLOR_HILITE, align 4
  %120 = call i32 @SetForegroundColor(i32 %119)
  br label %121

121:                                              ; preds = %118, %109
  %122 = load i32, i32* @REGISTER_WINDOW, align 4
  %123 = getelementptr inbounds [48 x i8], [48 x i8]* %1, i64 0, i64 0
  %124 = call i32 @Print(i32 %122, i8* %123)
  %125 = load i64, i64* @OldEDI, align 8
  %126 = load i64, i64* @CurrentEDI, align 8
  %127 = icmp ne i64 %125, %126
  br i1 %127, label %128, label %130

128:                                              ; preds = %121
  %129 = call i32 (...) @ResetColor()
  br label %130

130:                                              ; preds = %128, %121
  %131 = load i32, i32* @REGISTER_WINDOW, align 4
  %132 = call i32 @Print(i32 %131, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.8, i64 0, i64 0))
  %133 = getelementptr inbounds [48 x i8], [48 x i8]* %1, i64 0, i64 0
  %134 = load i64, i64* @CurrentEBP, align 8
  %135 = call i32 @PICE_sprintf(i8* %133, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i64 %134)
  %136 = load i64, i64* @OldEBP, align 8
  %137 = load i64, i64* @CurrentEBP, align 8
  %138 = icmp ne i64 %136, %137
  br i1 %138, label %139, label %142

139:                                              ; preds = %130
  %140 = load i32, i32* @COLOR_HILITE, align 4
  %141 = call i32 @SetForegroundColor(i32 %140)
  br label %142

142:                                              ; preds = %139, %130
  %143 = load i32, i32* @REGISTER_WINDOW, align 4
  %144 = getelementptr inbounds [48 x i8], [48 x i8]* %1, i64 0, i64 0
  %145 = call i32 @Print(i32 %143, i8* %144)
  %146 = load i64, i64* @OldEBP, align 8
  %147 = load i64, i64* @CurrentEBP, align 8
  %148 = icmp ne i64 %146, %147
  br i1 %148, label %149, label %151

149:                                              ; preds = %142
  %150 = call i32 (...) @ResetColor()
  br label %151

151:                                              ; preds = %149, %142
  %152 = load i32, i32* @REGISTER_WINDOW, align 4
  %153 = call i32 @Print(i32 %152, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.9, i64 0, i64 0))
  %154 = getelementptr inbounds [48 x i8], [48 x i8]* %1, i64 0, i64 0
  %155 = load i64, i64* @CurrentESP, align 8
  %156 = call i32 @PICE_sprintf(i8* %154, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i64 %155)
  %157 = load i64, i64* @OldESP, align 8
  %158 = load i64, i64* @CurrentESP, align 8
  %159 = icmp ne i64 %157, %158
  br i1 %159, label %160, label %163

160:                                              ; preds = %151
  %161 = load i32, i32* @COLOR_HILITE, align 4
  %162 = call i32 @SetForegroundColor(i32 %161)
  br label %163

163:                                              ; preds = %160, %151
  %164 = load i32, i32* @REGISTER_WINDOW, align 4
  %165 = getelementptr inbounds [48 x i8], [48 x i8]* %1, i64 0, i64 0
  %166 = call i32 @Print(i32 %164, i8* %165)
  %167 = load i64, i64* @OldESP, align 8
  %168 = load i64, i64* @CurrentESP, align 8
  %169 = icmp ne i64 %167, %168
  br i1 %169, label %170, label %172

170:                                              ; preds = %163
  %171 = call i32 (...) @ResetColor()
  br label %172

172:                                              ; preds = %170, %163
  %173 = load i32, i32* @REGISTER_WINDOW, align 4
  %174 = call i32 @Print(i32 %173, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.10, i64 0, i64 0))
  %175 = getelementptr inbounds [48 x i8], [48 x i8]* %1, i64 0, i64 0
  %176 = load i64, i64* @CurrentEIP, align 8
  %177 = call i32 @PICE_sprintf(i8* %175, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i64 %176)
  %178 = load i64, i64* @OldEIP, align 8
  %179 = load i64, i64* @CurrentEIP, align 8
  %180 = icmp ne i64 %178, %179
  br i1 %180, label %181, label %184

181:                                              ; preds = %172
  %182 = load i32, i32* @COLOR_HILITE, align 4
  %183 = call i32 @SetForegroundColor(i32 %182)
  br label %184

184:                                              ; preds = %181, %172
  %185 = load i32, i32* @REGISTER_WINDOW, align 4
  %186 = getelementptr inbounds [48 x i8], [48 x i8]* %1, i64 0, i64 0
  %187 = call i32 @Print(i32 %185, i8* %186)
  %188 = load i64, i64* @OldEIP, align 8
  %189 = load i64, i64* @CurrentEIP, align 8
  %190 = icmp ne i64 %188, %189
  br i1 %190, label %191, label %193

191:                                              ; preds = %184
  %192 = call i32 (...) @ResetColor()
  br label %193

193:                                              ; preds = %191, %184
  %194 = load i32, i32* @REGISTER_WINDOW, align 4
  %195 = call i32 @Print(i32 %194, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.11, i64 0, i64 0))
  %196 = getelementptr inbounds [48 x i8], [48 x i8]* %1, i64 0, i64 0
  %197 = load i64, i64* @CurrentEFL, align 8
  %198 = call i32 @PICE_sprintf(i8* %196, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i64 %197)
  %199 = load i64, i64* @OldEFL, align 8
  %200 = load i64, i64* @CurrentEFL, align 8
  %201 = icmp ne i64 %199, %200
  br i1 %201, label %202, label %205

202:                                              ; preds = %193
  %203 = load i32, i32* @COLOR_HILITE, align 4
  %204 = call i32 @SetForegroundColor(i32 %203)
  br label %205

205:                                              ; preds = %202, %193
  %206 = load i32, i32* @REGISTER_WINDOW, align 4
  %207 = getelementptr inbounds [48 x i8], [48 x i8]* %1, i64 0, i64 0
  %208 = call i32 @Print(i32 %206, i8* %207)
  %209 = load i64, i64* @OldEFL, align 8
  %210 = load i64, i64* @CurrentEFL, align 8
  %211 = icmp ne i64 %209, %210
  br i1 %211, label %212, label %214

212:                                              ; preds = %205
  %213 = call i32 (...) @ResetColor()
  br label %214

214:                                              ; preds = %212, %205
  %215 = getelementptr inbounds [48 x i8], [48 x i8]* %1, i64 0, i64 0
  %216 = load i64, i64* @CurrentEFL, align 8
  %217 = call i64 @VisualizeFlags(i64 %216)
  %218 = call i32 @PICE_sprintf(i8* %215, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.12, i64 0, i64 0), i64 %217)
  %219 = load i32, i32* @REGISTER_WINDOW, align 4
  %220 = getelementptr inbounds [48 x i8], [48 x i8]* %1, i64 0, i64 0
  %221 = call i32 @Print(i32 %219, i8* %220)
  %222 = load i32, i32* @REGISTER_WINDOW, align 4
  %223 = call i32 @Print(i32 %222, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.13, i64 0, i64 0))
  %224 = getelementptr inbounds [48 x i8], [48 x i8]* %1, i64 0, i64 0
  %225 = load i64, i64* @CurrentCS, align 8
  %226 = call i32 @PICE_sprintf(i8* %224, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.14, i64 0, i64 0), i64 %225)
  %227 = load i64, i64* @OldCS, align 8
  %228 = load i64, i64* @CurrentCS, align 8
  %229 = icmp ne i64 %227, %228
  br i1 %229, label %230, label %233

230:                                              ; preds = %214
  %231 = load i32, i32* @COLOR_HILITE, align 4
  %232 = call i32 @SetForegroundColor(i32 %231)
  br label %233

233:                                              ; preds = %230, %214
  %234 = load i32, i32* @REGISTER_WINDOW, align 4
  %235 = getelementptr inbounds [48 x i8], [48 x i8]* %1, i64 0, i64 0
  %236 = call i32 @Print(i32 %234, i8* %235)
  %237 = load i64, i64* @OldCS, align 8
  %238 = load i64, i64* @CurrentCS, align 8
  %239 = icmp ne i64 %237, %238
  br i1 %239, label %240, label %242

240:                                              ; preds = %233
  %241 = call i32 (...) @ResetColor()
  br label %242

242:                                              ; preds = %240, %233
  %243 = load i32, i32* @REGISTER_WINDOW, align 4
  %244 = call i32 @Print(i32 %243, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.15, i64 0, i64 0))
  %245 = getelementptr inbounds [48 x i8], [48 x i8]* %1, i64 0, i64 0
  %246 = load i64, i64* @CurrentDS, align 8
  %247 = call i32 @PICE_sprintf(i8* %245, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.14, i64 0, i64 0), i64 %246)
  %248 = load i64, i64* @OldDS, align 8
  %249 = load i64, i64* @CurrentDS, align 8
  %250 = icmp ne i64 %248, %249
  br i1 %250, label %251, label %254

251:                                              ; preds = %242
  %252 = load i32, i32* @COLOR_HILITE, align 4
  %253 = call i32 @SetForegroundColor(i32 %252)
  br label %254

254:                                              ; preds = %251, %242
  %255 = load i32, i32* @REGISTER_WINDOW, align 4
  %256 = getelementptr inbounds [48 x i8], [48 x i8]* %1, i64 0, i64 0
  %257 = call i32 @Print(i32 %255, i8* %256)
  %258 = load i64, i64* @OldDS, align 8
  %259 = load i64, i64* @CurrentDS, align 8
  %260 = icmp ne i64 %258, %259
  br i1 %260, label %261, label %263

261:                                              ; preds = %254
  %262 = call i32 (...) @ResetColor()
  br label %263

263:                                              ; preds = %261, %254
  %264 = load i32, i32* @REGISTER_WINDOW, align 4
  %265 = call i32 @Print(i32 %264, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.16, i64 0, i64 0))
  %266 = getelementptr inbounds [48 x i8], [48 x i8]* %1, i64 0, i64 0
  %267 = load i64, i64* @CurrentES, align 8
  %268 = call i32 @PICE_sprintf(i8* %266, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.14, i64 0, i64 0), i64 %267)
  %269 = load i64, i64* @OldES, align 8
  %270 = load i64, i64* @CurrentES, align 8
  %271 = icmp ne i64 %269, %270
  br i1 %271, label %272, label %275

272:                                              ; preds = %263
  %273 = load i32, i32* @COLOR_HILITE, align 4
  %274 = call i32 @SetForegroundColor(i32 %273)
  br label %275

275:                                              ; preds = %272, %263
  %276 = load i32, i32* @REGISTER_WINDOW, align 4
  %277 = getelementptr inbounds [48 x i8], [48 x i8]* %1, i64 0, i64 0
  %278 = call i32 @Print(i32 %276, i8* %277)
  %279 = load i64, i64* @OldES, align 8
  %280 = load i64, i64* @CurrentES, align 8
  %281 = icmp ne i64 %279, %280
  br i1 %281, label %282, label %284

282:                                              ; preds = %275
  %283 = call i32 (...) @ResetColor()
  br label %284

284:                                              ; preds = %282, %275
  %285 = load i32, i32* @REGISTER_WINDOW, align 4
  %286 = call i32 @Print(i32 %285, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.17, i64 0, i64 0))
  %287 = getelementptr inbounds [48 x i8], [48 x i8]* %1, i64 0, i64 0
  %288 = load i64, i64* @CurrentFS, align 8
  %289 = call i32 @PICE_sprintf(i8* %287, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.14, i64 0, i64 0), i64 %288)
  %290 = load i64, i64* @OldFS, align 8
  %291 = load i64, i64* @CurrentFS, align 8
  %292 = icmp ne i64 %290, %291
  br i1 %292, label %293, label %296

293:                                              ; preds = %284
  %294 = load i32, i32* @COLOR_HILITE, align 4
  %295 = call i32 @SetForegroundColor(i32 %294)
  br label %296

296:                                              ; preds = %293, %284
  %297 = load i32, i32* @REGISTER_WINDOW, align 4
  %298 = getelementptr inbounds [48 x i8], [48 x i8]* %1, i64 0, i64 0
  %299 = call i32 @Print(i32 %297, i8* %298)
  %300 = load i64, i64* @OldFS, align 8
  %301 = load i64, i64* @CurrentFS, align 8
  %302 = icmp ne i64 %300, %301
  br i1 %302, label %303, label %305

303:                                              ; preds = %296
  %304 = call i32 (...) @ResetColor()
  br label %305

305:                                              ; preds = %303, %296
  %306 = load i32, i32* @REGISTER_WINDOW, align 4
  %307 = call i32 @Print(i32 %306, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.18, i64 0, i64 0))
  %308 = getelementptr inbounds [48 x i8], [48 x i8]* %1, i64 0, i64 0
  %309 = load i64, i64* @CurrentGS, align 8
  %310 = call i32 @PICE_sprintf(i8* %308, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.14, i64 0, i64 0), i64 %309)
  %311 = load i64, i64* @OldGS, align 8
  %312 = load i64, i64* @CurrentGS, align 8
  %313 = icmp ne i64 %311, %312
  br i1 %313, label %314, label %316

314:                                              ; preds = %305
  %315 = call i32 (...) @ResetColor()
  br label %316

316:                                              ; preds = %314, %305
  %317 = load i32, i32* @REGISTER_WINDOW, align 4
  %318 = getelementptr inbounds [48 x i8], [48 x i8]* %1, i64 0, i64 0
  %319 = call i32 @Print(i32 %317, i8* %318)
  %320 = load i64, i64* @OldGS, align 8
  %321 = load i64, i64* @CurrentGS, align 8
  %322 = icmp ne i64 %320, %321
  br i1 %322, label %323, label %325

323:                                              ; preds = %316
  %324 = call i32 (...) @ResetColor()
  br label %325

325:                                              ; preds = %323, %316
  %326 = load i32, i32* @REGISTER_WINDOW, align 4
  %327 = call i32 @Print(i32 %326, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.19, i64 0, i64 0))
  %328 = getelementptr inbounds [48 x i8], [48 x i8]* %1, i64 0, i64 0
  %329 = load i64, i64* @CurrentSS, align 8
  %330 = call i32 @PICE_sprintf(i8* %328, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.14, i64 0, i64 0), i64 %329)
  %331 = load i64, i64* @OldSS, align 8
  %332 = load i64, i64* @CurrentSS, align 8
  %333 = icmp ne i64 %331, %332
  br i1 %333, label %334, label %337

334:                                              ; preds = %325
  %335 = load i32, i32* @COLOR_HILITE, align 4
  %336 = call i32 @SetForegroundColor(i32 %335)
  br label %337

337:                                              ; preds = %334, %325
  %338 = load i32, i32* @REGISTER_WINDOW, align 4
  %339 = getelementptr inbounds [48 x i8], [48 x i8]* %1, i64 0, i64 0
  %340 = call i32 @Print(i32 %338, i8* %339)
  %341 = load i64, i64* @OldSS, align 8
  %342 = load i64, i64* @CurrentSS, align 8
  %343 = icmp ne i64 %341, %342
  br i1 %343, label %344, label %346

344:                                              ; preds = %337
  %345 = call i32 (...) @ResetColor()
  br label %346

346:                                              ; preds = %344, %337
  %347 = call i32 (...) @LEAVE_FUNC()
  ret void
}

declare dso_local i32 @ENTER_FUNC(...) #1

declare dso_local i32 @Home(i32) #1

declare dso_local i32 @Print(i32, i8*) #1

declare dso_local i32 @PICE_sprintf(i8*, i8*, i64) #1

declare dso_local i32 @SetForegroundColor(i32) #1

declare dso_local i32 @ResetColor(...) #1

declare dso_local i64 @VisualizeFlags(i64) #1

declare dso_local i32 @LEAVE_FUNC(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
