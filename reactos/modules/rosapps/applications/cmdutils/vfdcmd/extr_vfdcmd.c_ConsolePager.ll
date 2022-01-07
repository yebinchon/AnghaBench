; ModuleID = '/home/carl/AnghaBench/reactos/modules/rosapps/applications/cmdutils/vfdcmd/extr_vfdcmd.c_ConsolePager.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rosapps/applications/cmdutils/vfdcmd/extr_vfdcmd.c_ConsolePager.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_20__ = type { i32, %struct.TYPE_21__, %struct.TYPE_15__, %struct.TYPE_14__ }
%struct.TYPE_21__ = type { i16 }
%struct.TYPE_15__ = type { i32 }
%struct.TYPE_14__ = type { i32, i32 }
%struct.TYPE_19__ = type { i64, %struct.TYPE_18__ }
%struct.TYPE_18__ = type { %struct.TYPE_17__ }
%struct.TYPE_17__ = type { %struct.TYPE_16__, i32 }
%struct.TYPE_16__ = type { i64 }

@ConsolePager.rows = internal global i32 0, align 4
@STD_OUTPUT_HANDLE = common dso_local global i32 0, align 4
@STD_INPUT_HANDLE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@FORMAT_MESSAGE_FROM_HMODULE = common dso_local global i32 0, align 4
@FORMAT_MESSAGE_IGNORE_INSERTS = common dso_local global i32 0, align 4
@MSG_PAGER_PROMPT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [29 x i8] c"Press any key to continue...\00", align 1
@ENABLE_PROCESSED_INPUT = common dso_local global i32 0, align 4
@COMMON_LVB_REVERSE_VIDEO = common dso_local global i32 0, align 4
@KEY_EVENT = common dso_local global i64 0, align 8
@VK_CANCEL = common dso_local global i64 0, align 8
@VK_ESCAPE = common dso_local global i64 0, align 8
@FALSE = common dso_local global i64 0, align 8
@TRUE = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @ConsolePager(i8* %0, i64 %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i64, align 8
  %6 = alloca [80 x i8], align 16
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.TYPE_20__, align 4
  %11 = alloca %struct.TYPE_19__, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i8*, align 8
  %16 = alloca i8, align 1
  store i8* %0, i8** %4, align 8
  store i64 %1, i64* %5, align 8
  store i32 0, i32* %7, align 4
  %17 = load i32, i32* @STD_OUTPUT_HANDLE, align 4
  %18 = call i32 @GetStdHandle(i32 %17)
  store i32 %18, i32* %8, align 4
  %19 = load i32, i32* @STD_INPUT_HANDLE, align 4
  %20 = call i32 @GetStdHandle(i32 %19)
  store i32 %20, i32* %9, align 4
  br label %21

21:                                               ; preds = %227, %2
  %22 = load i32, i32* %8, align 4
  %23 = call i32 @GetConsoleScreenBufferInfo(i32 %22, %struct.TYPE_20__* %10)
  %24 = load i64, i64* %5, align 8
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %29, label %26

26:                                               ; preds = %21
  %27 = load i32, i32* @ConsolePager.rows, align 4
  %28 = icmp sle i32 %27, 0
  br i1 %28, label %29, label %38

29:                                               ; preds = %26, %21
  %30 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %10, i32 0, i32 3
  %31 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %10, i32 0, i32 3
  %34 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 4
  %36 = sub nsw i32 %32, %35
  %37 = sub nsw i32 %36, 1
  store i32 %37, i32* @ConsolePager.rows, align 4
  br label %38

38:                                               ; preds = %29, %26
  %39 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %10, i32 0, i32 2
  %40 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  store i32 %41, i32* %14, align 4
  %42 = load i32, i32* @ConsolePager.rows, align 4
  %43 = icmp sle i32 %42, 0
  br i1 %43, label %44, label %47

44:                                               ; preds = %38
  %45 = load i8*, i8** %4, align 8
  %46 = call i32 @printf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i8* %45)
  br label %231

47:                                               ; preds = %38
  %48 = load i8*, i8** %4, align 8
  store i8* %48, i8** %15, align 8
  store i8 0, i8* %16, align 1
  br label %49

49:                                               ; preds = %75, %47
  %50 = load i8*, i8** %15, align 8
  %51 = load i8, i8* %50, align 1
  %52 = icmp ne i8 %51, 0
  br i1 %52, label %53, label %76

53:                                               ; preds = %49
  %54 = load i8*, i8** %15, align 8
  %55 = getelementptr inbounds i8, i8* %54, i32 1
  store i8* %55, i8** %15, align 8
  %56 = load i8, i8* %54, align 1
  %57 = sext i8 %56 to i32
  %58 = icmp eq i32 %57, 10
  br i1 %58, label %63, label %59

59:                                               ; preds = %53
  %60 = load i32, i32* %14, align 4
  %61 = add nsw i32 %60, -1
  store i32 %61, i32* %14, align 4
  %62 = icmp eq i32 %60, 0
  br i1 %62, label %63, label %75

63:                                               ; preds = %59, %53
  %64 = load i32, i32* @ConsolePager.rows, align 4
  %65 = add nsw i32 %64, -1
  store i32 %65, i32* @ConsolePager.rows, align 4
  %66 = icmp eq i32 %65, 0
  br i1 %66, label %67, label %71

67:                                               ; preds = %63
  %68 = load i8*, i8** %15, align 8
  %69 = load i8, i8* %68, align 1
  store i8 %69, i8* %16, align 1
  %70 = load i8*, i8** %15, align 8
  store i8 0, i8* %70, align 1
  br label %76

71:                                               ; preds = %63
  %72 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %10, i32 0, i32 2
  %73 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 4
  store i32 %74, i32* %14, align 4
  br label %75

75:                                               ; preds = %71, %59
  br label %49

76:                                               ; preds = %67, %49
  %77 = load i8*, i8** %4, align 8
  %78 = call i32 @printf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i8* %77)
  %79 = load i8, i8* %16, align 1
  %80 = sext i8 %79 to i32
  %81 = icmp eq i32 %80, 0
  br i1 %81, label %82, label %83

82:                                               ; preds = %76
  br label %231

83:                                               ; preds = %76
  %84 = load i32, i32* %7, align 4
  %85 = icmp eq i32 %84, 0
  br i1 %85, label %86, label %101

86:                                               ; preds = %83
  %87 = load i32, i32* @FORMAT_MESSAGE_FROM_HMODULE, align 4
  %88 = load i32, i32* @FORMAT_MESSAGE_IGNORE_INSERTS, align 4
  %89 = or i32 %87, %88
  %90 = load i32, i32* @MSG_PAGER_PROMPT, align 4
  %91 = getelementptr inbounds [80 x i8], [80 x i8]* %6, i64 0, i64 0
  %92 = call i32 @FormatMessage(i32 %89, i32* null, i32 %90, i32 0, i8* %91, i32 80, i32* null)
  store i32 %92, i32* %7, align 4
  %93 = load i32, i32* %7, align 4
  %94 = icmp eq i32 %93, 0
  br i1 %94, label %95, label %100

95:                                               ; preds = %86
  %96 = getelementptr inbounds [80 x i8], [80 x i8]* %6, i64 0, i64 0
  %97 = call i32 @strcpy(i8* %96, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0))
  %98 = getelementptr inbounds [80 x i8], [80 x i8]* %6, i64 0, i64 0
  %99 = call i32 @strlen(i8* %98)
  store i32 %99, i32* %7, align 4
  br label %100

100:                                              ; preds = %95, %86
  br label %101

101:                                              ; preds = %100, %83
  %102 = load i32, i32* %9, align 4
  %103 = call i32 @GetConsoleMode(i32 %102, i32* %13)
  %104 = load i32, i32* %9, align 4
  %105 = load i32, i32* %13, align 4
  %106 = load i32, i32* @ENABLE_PROCESSED_INPUT, align 4
  %107 = xor i32 %106, -1
  %108 = and i32 %105, %107
  %109 = call i32 @SetConsoleMode(i32 %104, i32 %108)
  %110 = load i32, i32* %8, align 4
  %111 = call i32 @GetConsoleScreenBufferInfo(i32 %110, %struct.TYPE_20__* %10)
  %112 = load i32, i32* %8, align 4
  %113 = getelementptr inbounds [80 x i8], [80 x i8]* %6, i64 0, i64 0
  %114 = load i32, i32* %7, align 4
  %115 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %10, i32 0, i32 1
  %116 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %115, i32 0, i32 0
  %117 = load i16, i16* %116, align 4
  %118 = call i32 @WriteConsoleOutputCharacter(i32 %112, i8* %113, i32 %114, i16 %117, i32* %12)
  %119 = load i32, i32* %8, align 4
  %120 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %10, i32 0, i32 0
  %121 = load i32, i32* %120, align 4
  %122 = load i32, i32* @COMMON_LVB_REVERSE_VIDEO, align 4
  %123 = or i32 %121, %122
  %124 = load i32, i32* %7, align 4
  %125 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %10, i32 0, i32 1
  %126 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %125, i32 0, i32 0
  %127 = load i16, i16* %126, align 4
  %128 = call i32 @FillConsoleOutputAttribute(i32 %119, i32 %123, i32 %124, i16 %127, i32* %12)
  %129 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %10, i32 0, i32 1
  %130 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %129, i32 0, i32 0
  %131 = load i16, i16* %130, align 4
  %132 = sext i16 %131 to i32
  %133 = load i32, i32* %7, align 4
  %134 = add nsw i32 %132, %133
  %135 = trunc i32 %134 to i16
  %136 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %10, i32 0, i32 1
  %137 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %136, i32 0, i32 0
  store i16 %135, i16* %137, align 4
  %138 = load i32, i32* %8, align 4
  %139 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %10, i32 0, i32 1
  %140 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %139, i32 0, i32 0
  %141 = load i16, i16* %140, align 4
  %142 = call i32 @SetConsoleCursorPosition(i32 %138, i16 %141)
  %143 = load i32, i32* %9, align 4
  %144 = call i32 @FlushConsoleInputBuffer(i32 %143)
  br label %145

145:                                              ; preds = %167, %101
  %146 = load i32, i32* %9, align 4
  %147 = call i32 @ReadConsoleInput(i32 %146, %struct.TYPE_19__* %11, i32 24, i32* %12)
  br label %148

148:                                              ; preds = %145
  %149 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %11, i32 0, i32 0
  %150 = load i64, i64* %149, align 8
  %151 = load i64, i64* @KEY_EVENT, align 8
  %152 = icmp ne i64 %150, %151
  br i1 %152, label %167, label %153

153:                                              ; preds = %148
  %154 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %11, i32 0, i32 1
  %155 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %154, i32 0, i32 0
  %156 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %155, i32 0, i32 1
  %157 = load i32, i32* %156, align 8
  %158 = icmp ne i32 %157, 0
  br i1 %158, label %159, label %167

159:                                              ; preds = %153
  %160 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %11, i32 0, i32 1
  %161 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %160, i32 0, i32 0
  %162 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %161, i32 0, i32 0
  %163 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %162, i32 0, i32 0
  %164 = load i64, i64* %163, align 8
  %165 = icmp ne i64 %164, 0
  %166 = xor i1 %165, true
  br label %167

167:                                              ; preds = %159, %153, %148
  %168 = phi i1 [ true, %153 ], [ true, %148 ], [ %166, %159 ]
  br i1 %168, label %145, label %169

169:                                              ; preds = %167
  %170 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %10, i32 0, i32 1
  %171 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %170, i32 0, i32 0
  %172 = load i16, i16* %171, align 4
  %173 = sext i16 %172 to i32
  %174 = load i32, i32* %7, align 4
  %175 = sub nsw i32 %173, %174
  %176 = trunc i32 %175 to i16
  %177 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %10, i32 0, i32 1
  %178 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %177, i32 0, i32 0
  store i16 %176, i16* %178, align 4
  %179 = load i32, i32* %8, align 4
  %180 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %10, i32 0, i32 1
  %181 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %180, i32 0, i32 0
  %182 = load i16, i16* %181, align 4
  %183 = call i32 @SetConsoleCursorPosition(i32 %179, i16 %182)
  %184 = load i32, i32* %8, align 4
  %185 = load i32, i32* %7, align 4
  %186 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %10, i32 0, i32 1
  %187 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %186, i32 0, i32 0
  %188 = load i16, i16* %187, align 4
  %189 = call i32 @FillConsoleOutputCharacter(i32 %184, i8 signext 32, i32 %185, i16 %188, i32* %12)
  %190 = load i32, i32* %8, align 4
  %191 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %10, i32 0, i32 0
  %192 = load i32, i32* %191, align 4
  %193 = load i32, i32* %7, align 4
  %194 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %10, i32 0, i32 1
  %195 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %194, i32 0, i32 0
  %196 = load i16, i16* %195, align 4
  %197 = call i32 @FillConsoleOutputAttribute(i32 %190, i32 %192, i32 %193, i16 %196, i32* %12)
  %198 = load i32, i32* %9, align 4
  %199 = load i32, i32* %13, align 4
  %200 = call i32 @SetConsoleMode(i32 %198, i32 %199)
  %201 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %11, i32 0, i32 1
  %202 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %201, i32 0, i32 0
  %203 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %202, i32 0, i32 0
  %204 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %203, i32 0, i32 0
  %205 = load i64, i64* %204, align 8
  %206 = load i64, i64* @VK_CANCEL, align 8
  %207 = icmp eq i64 %205, %206
  br i1 %207, label %225, label %208

208:                                              ; preds = %169
  %209 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %11, i32 0, i32 1
  %210 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %209, i32 0, i32 0
  %211 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %210, i32 0, i32 0
  %212 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %211, i32 0, i32 0
  %213 = load i64, i64* %212, align 8
  %214 = load i64, i64* @VK_ESCAPE, align 8
  %215 = icmp eq i64 %213, %214
  br i1 %215, label %225, label %216

216:                                              ; preds = %208
  %217 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %11, i32 0, i32 1
  %218 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %217, i32 0, i32 0
  %219 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %218, i32 0, i32 0
  %220 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %219, i32 0, i32 0
  %221 = load i64, i64* %220, align 8
  %222 = call signext i8 @tolower(i64 %221)
  %223 = sext i8 %222 to i32
  %224 = icmp eq i32 %223, 113
  br i1 %224, label %225, label %227

225:                                              ; preds = %216, %208, %169
  %226 = load i64, i64* @FALSE, align 8
  store i64 %226, i64* %3, align 8
  br label %233

227:                                              ; preds = %216
  %228 = load i8, i8* %16, align 1
  %229 = load i8*, i8** %15, align 8
  store i8 %228, i8* %229, align 1
  %230 = load i8*, i8** %15, align 8
  store i8* %230, i8** %4, align 8
  br label %21

231:                                              ; preds = %82, %44
  %232 = load i64, i64* @TRUE, align 8
  store i64 %232, i64* %3, align 8
  br label %233

233:                                              ; preds = %231, %225
  %234 = load i64, i64* %3, align 8
  ret i64 %234
}

declare dso_local i32 @GetStdHandle(i32) #1

declare dso_local i32 @GetConsoleScreenBufferInfo(i32, %struct.TYPE_20__*) #1

declare dso_local i32 @printf(i8*, i8*) #1

declare dso_local i32 @FormatMessage(i32, i32*, i32, i32, i8*, i32, i32*) #1

declare dso_local i32 @strcpy(i8*, i8*) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i32 @GetConsoleMode(i32, i32*) #1

declare dso_local i32 @SetConsoleMode(i32, i32) #1

declare dso_local i32 @WriteConsoleOutputCharacter(i32, i8*, i32, i16, i32*) #1

declare dso_local i32 @FillConsoleOutputAttribute(i32, i32, i32, i16, i32*) #1

declare dso_local i32 @SetConsoleCursorPosition(i32, i16) #1

declare dso_local i32 @FlushConsoleInputBuffer(i32) #1

declare dso_local i32 @ReadConsoleInput(i32, %struct.TYPE_19__*, i32, i32*) #1

declare dso_local i32 @FillConsoleOutputCharacter(i32, i8 signext, i32, i16, i32*) #1

declare dso_local signext i8 @tolower(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
