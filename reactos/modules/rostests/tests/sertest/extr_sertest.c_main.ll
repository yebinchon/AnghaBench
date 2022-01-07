; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/tests/sertest/extr_sertest.c_main.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/tests/sertest/extr_sertest.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i32, i32, i32, i32 }

@BUFSIZE = common dso_local global i32 0, align 4
@MAX_PORTNAME_LEN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@.str.1 = private unnamed_addr constant [6 x i8] c"COM%d\00", align 1
@.str.2 = private unnamed_addr constant [41 x i8] c"Serial Port Test Application Version %s\0A\00", align 1
@APP_VERSION_STR = common dso_local global i8* null, align 8
@.str.3 = private unnamed_addr constant [40 x i8] c"Attempting to open serial port %d - %s\0A\00", align 1
@GENERIC_READ = common dso_local global i32 0, align 4
@GENERIC_WRITE = common dso_local global i32 0, align 4
@OPEN_EXISTING = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [45 x i8] c"ERROR: CreateFile() failed with result: %lx\0A\00", align 1
@.str.5 = private unnamed_addr constant [28 x i8] c"CreateFile() returned: %lx\0A\00", align 1
@.str.6 = private unnamed_addr constant [44 x i8] c"Fiddling with DTR and RTS control lines...\0A\00", align 1
@SETDTR = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [49 x i8] c"WARNING: EscapeCommFunction(SETDTR) failed: %lx\0A\00", align 1
@SETRTS = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [49 x i8] c"WARNING: EscapeCommFunction(SETRTS) failed: %lx\0A\00", align 1
@CLRDTR = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [49 x i8] c"WARNING: EscapeCommFunction(CLRDTR) failed: %lx\0A\00", align 1
@CLRRTS = common dso_local global i32 0, align 4
@.str.10 = private unnamed_addr constant [49 x i8] c"WARNING: EscapeCommFunction(CLRRTS) failed: %lx\0A\00", align 1
@.str.11 = private unnamed_addr constant [45 x i8] c"Getting the default line characteristics...\0A\00", align 1
@.str.12 = private unnamed_addr constant [35 x i8] c"ERROR: failed to get the dcb: %ld\0A\00", align 1
@.str.13 = private unnamed_addr constant [48 x i8] c"Setting the line characteristics to 9600,8,N,1\0A\00", align 1
@NOPARITY = common dso_local global i32 0, align 4
@ONESTOPBIT = common dso_local global i32 0, align 4
@.str.14 = private unnamed_addr constant [42 x i8] c"ERROR: failed to set the comm state: %lx\0A\00", align 1
@.str.15 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.16 = private unnamed_addr constant [45 x i8] c"Writting transmit buffer to the serial port\0A\00", align 1
@.str.17 = private unnamed_addr constant [48 x i8] c"ERROR: failed to write to the serial port: %lx\0A\00", align 1
@.str.18 = private unnamed_addr constant [46 x i8] c"WriteFile() returned: %lx, byteswritten: %lx\0A\00", align 1
@.str.19 = private unnamed_addr constant [37 x i8] c"Attempting to close the serial port\0A\00", align 1
@.str.20 = private unnamed_addr constant [45 x i8] c"ClearCommError returned: %lx, dwErrors: %lx\0A\00", align 1
@.str.21 = private unnamed_addr constant [45 x i8] c"ERROR: failed to close the serial port: %lx\0A\00", align 1
@.str.22 = private unnamed_addr constant [10 x i8] c"Finished\0A\00", align 1
@dwNumRead = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.TYPE_4__, align 4
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i64, align 8
  %20 = alloca i32, align 4
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  %21 = load i32, i32* @BUFSIZE, align 4
  %22 = zext i32 %21 to i64
  %23 = call i8* @llvm.stacksave()
  store i8* %23, i8** %6, align 8
  %24 = alloca i32, i64 %22, align 16
  store i64 %22, i64* %7, align 8
  %25 = load i32, i32* @BUFSIZE, align 4
  %26 = zext i32 %25 to i64
  %27 = alloca i32, i64 %26, align 16
  store i64 %26, i64* %8, align 8
  store i32 9600, i32* %9, align 4
  store i32 1, i32* %18, align 4
  %28 = load i32, i32* @MAX_PORTNAME_LEN, align 4
  %29 = zext i32 %28 to i64
  %30 = alloca i8, i64 %29, align 16
  store i64 %29, i64* %19, align 8
  %31 = load i32, i32* %4, align 4
  %32 = icmp sgt i32 %31, 1
  br i1 %32, label %33, label %38

33:                                               ; preds = %2
  %34 = load i8**, i8*** %5, align 8
  %35 = getelementptr inbounds i8*, i8** %34, i64 1
  %36 = load i8*, i8** %35, align 8
  %37 = call i32 @sscanf(i8* %36, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i32* %18)
  br label %38

38:                                               ; preds = %33, %2
  %39 = call i8* @_T(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0))
  %40 = load i32, i32* %18, align 4
  %41 = call i32 @sprintf(i8* %30, i8* %39, i32 %40)
  %42 = load i8*, i8** @APP_VERSION_STR, align 8
  %43 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.2, i64 0, i64 0), i8* %42)
  %44 = load i32, i32* %18, align 4
  %45 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.3, i64 0, i64 0), i32 %44, i8* %30)
  %46 = load i32, i32* @GENERIC_READ, align 4
  %47 = load i32, i32* @GENERIC_WRITE, align 4
  %48 = or i32 %46, %47
  %49 = load i32, i32* @OPEN_EXISTING, align 4
  %50 = call i64 @CreateFile(i8* %30, i32 %48, i32 0, i32* null, i32 %49, i32 0, i32* null)
  store i64 %50, i64* %14, align 8
  %51 = load i64, i64* %14, align 8
  %52 = icmp eq i64 %51, -1
  br i1 %52, label %53, label %57

53:                                               ; preds = %38
  %54 = load i64, i64* %14, align 8
  %55 = trunc i64 %54 to i32
  %56 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.4, i64 0, i64 0), i32 %55)
  store i32 1, i32* %3, align 4
  store i32 1, i32* %20, align 4
  br label %196

57:                                               ; preds = %38
  %58 = load i64, i64* %14, align 8
  %59 = trunc i64 %58 to i32
  %60 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.5, i64 0, i64 0), i32 %59)
  %61 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.6, i64 0, i64 0))
  store i32 0, i32* %15, align 4
  br label %62

62:                                               ; preds = %117, %57
  %63 = load i32, i32* %15, align 4
  %64 = icmp slt i32 %63, 100
  br i1 %64, label %65, label %120

65:                                               ; preds = %62
  %66 = load i64, i64* %14, align 8
  %67 = load i32, i32* @SETDTR, align 4
  %68 = call i64 @EscapeCommFunction(i64 %66, i32 %67)
  store i64 %68, i64* %13, align 8
  %69 = load i64, i64* %13, align 8
  %70 = icmp ne i64 %69, 0
  br i1 %70, label %75, label %71

71:                                               ; preds = %65
  %72 = load i64, i64* %13, align 8
  %73 = trunc i64 %72 to i32
  %74 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.7, i64 0, i64 0), i32 %73)
  br label %75

75:                                               ; preds = %71, %65
  %76 = load i64, i64* %14, align 8
  %77 = load i32, i32* @SETRTS, align 4
  %78 = call i64 @EscapeCommFunction(i64 %76, i32 %77)
  store i64 %78, i64* %13, align 8
  %79 = load i64, i64* %13, align 8
  %80 = icmp ne i64 %79, 0
  br i1 %80, label %85, label %81

81:                                               ; preds = %75
  %82 = load i64, i64* %13, align 8
  %83 = trunc i64 %82 to i32
  %84 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.8, i64 0, i64 0), i32 %83)
  br label %85

85:                                               ; preds = %81, %75
  store i32 0, i32* %16, align 4
  br label %86

86:                                               ; preds = %93, %85
  %87 = load i32, i32* %16, align 4
  %88 = icmp slt i32 %87, 1000
  br i1 %88, label %89, label %96

89:                                               ; preds = %86
  %90 = load i32, i32* %16, align 4
  %91 = load i32, i32* %17, align 4
  %92 = mul nsw i32 %91, %90
  store i32 %92, i32* %17, align 4
  br label %93

93:                                               ; preds = %89
  %94 = load i32, i32* %16, align 4
  %95 = add nsw i32 %94, 1
  store i32 %95, i32* %16, align 4
  br label %86

96:                                               ; preds = %86
  %97 = load i64, i64* %14, align 8
  %98 = load i32, i32* @CLRDTR, align 4
  %99 = call i64 @EscapeCommFunction(i64 %97, i32 %98)
  store i64 %99, i64* %13, align 8
  %100 = load i64, i64* %13, align 8
  %101 = icmp ne i64 %100, 0
  br i1 %101, label %106, label %102

102:                                              ; preds = %96
  %103 = load i64, i64* %13, align 8
  %104 = trunc i64 %103 to i32
  %105 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.9, i64 0, i64 0), i32 %104)
  br label %106

106:                                              ; preds = %102, %96
  %107 = load i64, i64* %14, align 8
  %108 = load i32, i32* @CLRRTS, align 4
  %109 = call i64 @EscapeCommFunction(i64 %107, i32 %108)
  store i64 %109, i64* %13, align 8
  %110 = load i64, i64* %13, align 8
  %111 = icmp ne i64 %110, 0
  br i1 %111, label %116, label %112

112:                                              ; preds = %106
  %113 = load i64, i64* %13, align 8
  %114 = trunc i64 %113 to i32
  %115 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.10, i64 0, i64 0), i32 %114)
  br label %116

116:                                              ; preds = %112, %106
  br label %117

117:                                              ; preds = %116
  %118 = load i32, i32* %15, align 4
  %119 = add nsw i32 %118, 1
  store i32 %119, i32* %15, align 4
  br label %62

120:                                              ; preds = %62
  %121 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.11, i64 0, i64 0))
  %122 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %12, i32 0, i32 0
  store i32 20, i32* %122, align 4
  %123 = load i64, i64* %14, align 8
  %124 = call i32 @GetCommState(i64 %123, %struct.TYPE_4__* %12)
  %125 = icmp ne i32 %124, 0
  br i1 %125, label %129, label %126

126:                                              ; preds = %120
  %127 = call i32 (...) @GetLastError()
  %128 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.12, i64 0, i64 0), i32 %127)
  store i32 2, i32* %3, align 4
  store i32 1, i32* %20, align 4
  br label %196

129:                                              ; preds = %120
  %130 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.13, i64 0, i64 0))
  %131 = load i32, i32* %9, align 4
  %132 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %12, i32 0, i32 1
  store i32 %131, i32* %132, align 4
  %133 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %12, i32 0, i32 2
  store i32 8, i32* %133, align 4
  %134 = load i32, i32* @NOPARITY, align 4
  %135 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %12, i32 0, i32 4
  store i32 %134, i32* %135, align 4
  %136 = load i32, i32* @ONESTOPBIT, align 4
  %137 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %12, i32 0, i32 3
  store i32 %136, i32* %137, align 4
  %138 = load i64, i64* %14, align 8
  %139 = call i64 @SetCommState(i64 %138, %struct.TYPE_4__* %12)
  store i64 %139, i64* %13, align 8
  %140 = load i64, i64* %13, align 8
  %141 = icmp ne i64 %140, 0
  br i1 %141, label %146, label %142

142:                                              ; preds = %129
  %143 = load i64, i64* %13, align 8
  %144 = trunc i64 %143 to i32
  %145 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.14, i64 0, i64 0), i32 %144)
  store i32 3, i32* %3, align 4
  store i32 1, i32* %20, align 4
  br label %196

146:                                              ; preds = %129
  store i32 0, i32* %15, align 4
  br label %147

147:                                              ; preds = %159, %146
  %148 = load i32, i32* %15, align 4
  %149 = load i32, i32* @BUFSIZE, align 4
  %150 = icmp slt i32 %148, %149
  br i1 %150, label %151, label %162

151:                                              ; preds = %147
  %152 = load i32, i32* %15, align 4
  %153 = load i32, i32* %15, align 4
  %154 = sext i32 %153 to i64
  %155 = getelementptr inbounds i32, i32* %24, i64 %154
  store i32 %152, i32* %155, align 4
  %156 = load i32, i32* %15, align 4
  %157 = sext i32 %156 to i64
  %158 = getelementptr inbounds i32, i32* %27, i64 %157
  store i32 255, i32* %158, align 4
  br label %159

159:                                              ; preds = %151
  %160 = load i32, i32* %15, align 4
  %161 = add nsw i32 %160, 1
  store i32 %161, i32* %15, align 4
  br label %147

162:                                              ; preds = %147
  %163 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.15, i64 0, i64 0))
  %164 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.16, i64 0, i64 0))
  %165 = load i64, i64* %14, align 8
  %166 = load i32, i32* @BUFSIZE, align 4
  %167 = call i64 @WriteFile(i64 %165, i32* %24, i32 %166, i32* %10, i32* null)
  store i64 %167, i64* %13, align 8
  %168 = load i64, i64* %13, align 8
  %169 = icmp ne i64 %168, 0
  br i1 %169, label %174, label %170

170:                                              ; preds = %162
  %171 = load i64, i64* %13, align 8
  %172 = trunc i64 %171 to i32
  %173 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.17, i64 0, i64 0), i32 %172)
  store i32 4, i32* %3, align 4
  store i32 1, i32* %20, align 4
  br label %196

174:                                              ; preds = %162
  %175 = load i64, i64* %13, align 8
  %176 = trunc i64 %175 to i32
  %177 = load i32, i32* %10, align 4
  %178 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.18, i64 0, i64 0), i32 %176, i32 %177)
  %179 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.19, i64 0, i64 0))
  %180 = load i64, i64* %14, align 8
  %181 = call i64 @ClearCommError(i64 %180, i32* %11, i32* null)
  store i64 %181, i64* %13, align 8
  %182 = load i64, i64* %13, align 8
  %183 = trunc i64 %182 to i32
  %184 = load i32, i32* %11, align 4
  %185 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.20, i64 0, i64 0), i32 %183, i32 %184)
  %186 = load i64, i64* %14, align 8
  %187 = call i64 @CloseHandle(i64 %186)
  store i64 %187, i64* %13, align 8
  %188 = load i64, i64* %13, align 8
  %189 = icmp ne i64 %188, 0
  br i1 %189, label %194, label %190

190:                                              ; preds = %174
  %191 = load i64, i64* %13, align 8
  %192 = trunc i64 %191 to i32
  %193 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.21, i64 0, i64 0), i32 %192)
  store i32 6, i32* %3, align 4
  store i32 1, i32* %20, align 4
  br label %196

194:                                              ; preds = %174
  %195 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.22, i64 0, i64 0))
  store i32 0, i32* %3, align 4
  store i32 1, i32* %20, align 4
  br label %196

196:                                              ; preds = %194, %190, %170, %142, %126, %53
  %197 = load i8*, i8** %6, align 8
  call void @llvm.stackrestore(i8* %197)
  %198 = load i32, i32* %3, align 4
  ret i32 %198
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @sscanf(i8*, i8*, i32*) #2

declare dso_local i32 @sprintf(i8*, i8*, i32) #2

declare dso_local i8* @_T(i8*) #2

declare dso_local i32 @printf(i8*, ...) #2

declare dso_local i64 @CreateFile(i8*, i32, i32, i32*, i32, i32, i32*) #2

declare dso_local i64 @EscapeCommFunction(i64, i32) #2

declare dso_local i32 @GetCommState(i64, %struct.TYPE_4__*) #2

declare dso_local i32 @GetLastError(...) #2

declare dso_local i64 @SetCommState(i64, %struct.TYPE_4__*) #2

declare dso_local i64 @WriteFile(i64, i32*, i32, i32*, i32*) #2

declare dso_local i64 @ClearCommError(i64, i32*, i32*) #2

declare dso_local i64 @CloseHandle(i64) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
