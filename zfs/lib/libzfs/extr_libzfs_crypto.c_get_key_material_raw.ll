; ModuleID = '/home/carl/AnghaBench/zfs/lib/libzfs/extr_libzfs_crypto.c_get_key_material_raw.c'
source_filename = "/home/carl/AnghaBench/zfs/lib/libzfs/extr_libzfs_crypto.c_get_key_material_raw.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.termios = type { i32 }
%struct.sigaction = type { i32, i32, i64 }

@caught_interrupt = common dso_local global i64 0, align 8
@catch_signal = common dso_local global i32 0, align 4
@SIGINT = common dso_local global i32 0, align 4
@SIG_IGN = common dso_local global i32 0, align 4
@SIGTSTP = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [19 x i8] c"%s %s%s for '%s': \00", align 1
@.str.1 = private unnamed_addr constant [9 x i8] c"Re-enter\00", align 1
@.str.2 = private unnamed_addr constant [6 x i8] c"Enter\00", align 1
@.str.3 = private unnamed_addr constant [5 x i8] c"new \00", align 1
@.str.4 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.5 = private unnamed_addr constant [10 x i8] c"%s %s%s: \00", align 1
@stdout = common dso_local global i32 0, align 4
@ECHO = common dso_local global i32 0, align 4
@ECHOE = common dso_local global i32 0, align 4
@ECHOK = common dso_local global i32 0, align 4
@ECHONL = common dso_local global i32 0, align 4
@TCSAFLUSH = common dso_local global i32 0, align 4
@errno = common dso_local global i32 0, align 4
@ZFS_KEYFORMAT_RAW = common dso_local global i64 0, align 8
@WRAPPING_KEY_LEN = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i8*, i64, i64, i64, i8**, i64*)* @get_key_material_raw to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @get_key_material_raw(i32* %0, i8* %1, i64 %2, i64 %3, i64 %4, i8** %5, i64* %6) #0 {
  %8 = alloca i32*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i8**, align 8
  %14 = alloca i64*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i64, align 8
  %18 = alloca %struct.termios, align 4
  %19 = alloca %struct.termios, align 4
  %20 = alloca %struct.sigaction, align 8
  %21 = alloca %struct.sigaction, align 8
  %22 = alloca %struct.sigaction, align 8
  store i32* %0, i32** %8, align 8
  store i8* %1, i8** %9, align 8
  store i64 %2, i64* %10, align 8
  store i64 %3, i64* %11, align 8
  store i64 %4, i64* %12, align 8
  store i8** %5, i8*** %13, align 8
  store i64* %6, i64** %14, align 8
  store i32 0, i32* %15, align 4
  store i64 0, i64* %17, align 8
  %23 = load i64*, i64** %14, align 8
  store i64 0, i64* %23, align 8
  %24 = load i32*, i32** %8, align 8
  %25 = call i32 @fileno(i32* %24)
  %26 = call i64 @isatty(i32 %25)
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %95

28:                                               ; preds = %7
  store i64 0, i64* @caught_interrupt, align 8
  %29 = getelementptr inbounds %struct.sigaction, %struct.sigaction* %20, i32 0, i32 2
  store i64 0, i64* %29, align 8
  %30 = getelementptr inbounds %struct.sigaction, %struct.sigaction* %20, i32 0, i32 1
  %31 = call i32 @sigemptyset(i32* %30)
  %32 = load i32, i32* @catch_signal, align 4
  %33 = getelementptr inbounds %struct.sigaction, %struct.sigaction* %20, i32 0, i32 0
  store i32 %32, i32* %33, align 8
  %34 = load i32, i32* @SIGINT, align 4
  %35 = call i32 @sigaction(i32 %34, %struct.sigaction* %20, %struct.sigaction* %21)
  %36 = load i32, i32* @SIG_IGN, align 4
  %37 = getelementptr inbounds %struct.sigaction, %struct.sigaction* %20, i32 0, i32 0
  store i32 %36, i32* %37, align 8
  %38 = load i32, i32* @SIGTSTP, align 4
  %39 = call i32 @sigaction(i32 %38, %struct.sigaction* %20, %struct.sigaction* %22)
  %40 = load i8*, i8** %9, align 8
  %41 = icmp ne i8* %40, null
  br i1 %41, label %42, label %55

42:                                               ; preds = %28
  %43 = load i64, i64* %11, align 8
  %44 = icmp ne i64 %43, 0
  %45 = zext i1 %44 to i64
  %46 = select i1 %44, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0)
  %47 = load i64, i64* %12, align 8
  %48 = icmp ne i64 %47, 0
  %49 = zext i1 %48 to i64
  %50 = select i1 %48, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.4, i64 0, i64 0)
  %51 = load i64, i64* %10, align 8
  %52 = call i8* @get_format_prompt_string(i64 %51)
  %53 = load i8*, i8** %9, align 8
  %54 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i8* %46, i8* %50, i8* %52, i8* %53)
  br label %67

55:                                               ; preds = %28
  %56 = load i64, i64* %11, align 8
  %57 = icmp ne i64 %56, 0
  %58 = zext i1 %57 to i64
  %59 = select i1 %57, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0)
  %60 = load i64, i64* %12, align 8
  %61 = icmp ne i64 %60, 0
  %62 = zext i1 %61 to i64
  %63 = select i1 %61, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.4, i64 0, i64 0)
  %64 = load i64, i64* %10, align 8
  %65 = call i8* @get_format_prompt_string(i64 %64)
  %66 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.5, i64 0, i64 0), i8* %59, i8* %63, i8* %65)
  br label %67

67:                                               ; preds = %55, %42
  %68 = load i32, i32* @stdout, align 4
  %69 = call i32 @fflush(i32 %68)
  %70 = load i32*, i32** %8, align 8
  %71 = call i32 @fileno(i32* %70)
  %72 = call i32 @tcgetattr(i32 %71, %struct.termios* %18)
  %73 = bitcast %struct.termios* %19 to i8*
  %74 = bitcast %struct.termios* %18 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %73, i8* align 4 %74, i64 4, i1 false)
  %75 = load i32, i32* @ECHO, align 4
  %76 = load i32, i32* @ECHOE, align 4
  %77 = or i32 %75, %76
  %78 = load i32, i32* @ECHOK, align 4
  %79 = or i32 %77, %78
  %80 = load i32, i32* @ECHONL, align 4
  %81 = or i32 %79, %80
  %82 = xor i32 %81, -1
  %83 = getelementptr inbounds %struct.termios, %struct.termios* %19, i32 0, i32 0
  %84 = load i32, i32* %83, align 4
  %85 = and i32 %84, %82
  store i32 %85, i32* %83, align 4
  %86 = load i32*, i32** %8, align 8
  %87 = call i32 @fileno(i32* %86)
  %88 = load i32, i32* @TCSAFLUSH, align 4
  %89 = call i32 @tcsetattr(i32 %87, i32 %88, %struct.termios* %19)
  store i32 %89, i32* %15, align 4
  %90 = load i32, i32* %15, align 4
  %91 = icmp ne i32 %90, 0
  br i1 %91, label %92, label %94

92:                                               ; preds = %67
  %93 = load i32, i32* @errno, align 4
  store i32 %93, i32* %15, align 4
  store i32 0, i32* @errno, align 4
  br label %160

94:                                               ; preds = %67
  br label %95

95:                                               ; preds = %94, %7
  %96 = load i64, i64* %10, align 8
  %97 = load i64, i64* @ZFS_KEYFORMAT_RAW, align 8
  %98 = icmp ne i64 %96, %97
  br i1 %98, label %99, label %127

99:                                               ; preds = %95
  %100 = load i8**, i8*** %13, align 8
  %101 = load i32*, i32** %8, align 8
  %102 = call i32 @getline(i8** %100, i64* %17, i32* %101)
  store i32 %102, i32* %16, align 4
  %103 = load i32, i32* %16, align 4
  %104 = icmp slt i32 %103, 0
  br i1 %104, label %105, label %107

105:                                              ; preds = %99
  %106 = load i32, i32* @errno, align 4
  store i32 %106, i32* %15, align 4
  store i32 0, i32* @errno, align 4
  br label %160

107:                                              ; preds = %99
  %108 = load i8**, i8*** %13, align 8
  %109 = load i8*, i8** %108, align 8
  %110 = load i32, i32* %16, align 4
  %111 = sub nsw i32 %110, 1
  %112 = sext i32 %111 to i64
  %113 = getelementptr inbounds i8, i8* %109, i64 %112
  %114 = load i8, i8* %113, align 1
  %115 = sext i8 %114 to i32
  %116 = icmp eq i32 %115, 10
  br i1 %116, label %117, label %126

117:                                              ; preds = %107
  %118 = load i8**, i8*** %13, align 8
  %119 = load i8*, i8** %118, align 8
  %120 = load i32, i32* %16, align 4
  %121 = sub nsw i32 %120, 1
  %122 = sext i32 %121 to i64
  %123 = getelementptr inbounds i8, i8* %119, i64 %122
  store i8 0, i8* %123, align 1
  %124 = load i32, i32* %16, align 4
  %125 = add nsw i32 %124, -1
  store i32 %125, i32* %16, align 4
  br label %126

126:                                              ; preds = %117, %107
  br label %156

127:                                              ; preds = %95
  %128 = load i32, i32* @WRAPPING_KEY_LEN, align 4
  %129 = add nsw i32 %128, 1
  %130 = sext i32 %129 to i64
  %131 = mul i64 %130, 1
  %132 = trunc i64 %131 to i32
  %133 = call i8* @malloc(i32 %132)
  %134 = load i8**, i8*** %13, align 8
  store i8* %133, i8** %134, align 8
  %135 = load i8**, i8*** %13, align 8
  %136 = load i8*, i8** %135, align 8
  %137 = icmp eq i8* %136, null
  br i1 %137, label %138, label %140

138:                                              ; preds = %127
  %139 = load i32, i32* @ENOMEM, align 4
  store i32 %139, i32* %15, align 4
  br label %160

140:                                              ; preds = %127
  %141 = load i8**, i8*** %13, align 8
  %142 = load i8*, i8** %141, align 8
  %143 = load i32, i32* @WRAPPING_KEY_LEN, align 4
  %144 = add nsw i32 %143, 1
  %145 = load i32*, i32** %8, align 8
  %146 = call i32 @fread(i8* %142, i32 1, i32 %144, i32* %145)
  store i32 %146, i32* %16, align 4
  %147 = load i32, i32* %16, align 4
  %148 = icmp slt i32 %147, 0
  br i1 %148, label %149, label %155

149:                                              ; preds = %140
  %150 = load i8**, i8*** %13, align 8
  %151 = load i8*, i8** %150, align 8
  %152 = call i32 @free(i8* %151)
  %153 = load i8**, i8*** %13, align 8
  store i8* null, i8** %153, align 8
  %154 = load i32, i32* @errno, align 4
  store i32 %154, i32* %15, align 4
  store i32 0, i32* @errno, align 4
  br label %160

155:                                              ; preds = %140
  br label %156

156:                                              ; preds = %155, %126
  %157 = load i32, i32* %16, align 4
  %158 = sext i32 %157 to i64
  %159 = load i64*, i64** %14, align 8
  store i64 %158, i64* %159, align 8
  br label %160

160:                                              ; preds = %156, %149, %138, %105, %92
  %161 = load i32*, i32** %8, align 8
  %162 = call i32 @fileno(i32* %161)
  %163 = call i64 @isatty(i32 %162)
  %164 = icmp ne i64 %163, 0
  br i1 %164, label %165, label %182

165:                                              ; preds = %160
  %166 = load i32*, i32** %8, align 8
  %167 = call i32 @fileno(i32* %166)
  %168 = load i32, i32* @TCSAFLUSH, align 4
  %169 = call i32 @tcsetattr(i32 %167, i32 %168, %struct.termios* %18)
  %170 = load i32, i32* @SIGINT, align 4
  %171 = call i32 @sigaction(i32 %170, %struct.sigaction* %21, %struct.sigaction* null)
  %172 = load i32, i32* @SIGTSTP, align 4
  %173 = call i32 @sigaction(i32 %172, %struct.sigaction* %22, %struct.sigaction* null)
  %174 = load i64, i64* @caught_interrupt, align 8
  %175 = icmp ne i64 %174, 0
  br i1 %175, label %176, label %180

176:                                              ; preds = %165
  %177 = call i32 (...) @getpid()
  %178 = load i64, i64* @caught_interrupt, align 8
  %179 = call i32 @kill(i32 %177, i64 %178)
  br label %180

180:                                              ; preds = %176, %165
  %181 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.6, i64 0, i64 0))
  br label %182

182:                                              ; preds = %180, %160
  %183 = load i32, i32* %15, align 4
  ret i32 %183
}

declare dso_local i64 @isatty(i32) #1

declare dso_local i32 @fileno(i32*) #1

declare dso_local i32 @sigemptyset(i32*) #1

declare dso_local i32 @sigaction(i32, %struct.sigaction*, %struct.sigaction*) #1

declare dso_local i32 @printf(i8*, ...) #1

declare dso_local i8* @get_format_prompt_string(i64) #1

declare dso_local i32 @fflush(i32) #1

declare dso_local i32 @tcgetattr(i32, %struct.termios*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @tcsetattr(i32, i32, %struct.termios*) #1

declare dso_local i32 @getline(i8**, i64*, i32*) #1

declare dso_local i8* @malloc(i32) #1

declare dso_local i32 @fread(i8*, i32, i32, i32*) #1

declare dso_local i32 @free(i8*) #1

declare dso_local i32 @kill(i32, i64) #1

declare dso_local i32 @getpid(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
