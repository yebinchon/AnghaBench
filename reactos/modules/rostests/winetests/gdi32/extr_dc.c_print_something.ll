; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/winetests/gdi32/extr_dc.c_print_something.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/winetests/gdi32/extr_dc.c_print_something.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i8*, i8*, i64, i32* }

@print_something.psadobe = internal constant [10 x i8] c"%!PS-Adobe", align 1
@MAX_PATH = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [3 x i8] c"ps\00", align 1
@.str.1 = private unnamed_addr constant [12 x i8] c"Let's dance\00", align 1
@.str.2 = private unnamed_addr constant [21 x i8] c"StartDoc failed: %d\0A\00", align 1
@.str.3 = private unnamed_addr constant [36 x i8] c"\0A% ===> before DOWNLOADHEADER <===\0A\00", align 1
@POSTSCRIPT_PASSTHROUGH = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [35 x i8] c"POSTSCRIPT_PASSTHROUGH failed: %d\0A\00", align 1
@.str.5 = private unnamed_addr constant [9 x i8] c"deadbeef\00", align 1
@DOWNLOADHEADER = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [23 x i8] c"DOWNLOADHEADER failed\0A\00", align 1
@.str.7 = private unnamed_addr constant [35 x i8] c"\0A% ===> after DOWNLOADHEADER <===\0A\00", align 1
@.str.8 = private unnamed_addr constant [15 x i8] c"EndDoc failed\0A\00", align 1
@GENERIC_READ = common dso_local global i32 0, align 4
@OPEN_EXISTING = common dso_local global i32 0, align 4
@INVALID_HANDLE_VALUE = common dso_local global i64 0, align 8
@.str.9 = private unnamed_addr constant [19 x i8] c"CreateFile failed\0A\00", align 1
@.str.10 = private unnamed_addr constant [17 x i8] c"ReadFile failed\0A\00", align 1
@.str.11 = private unnamed_addr constant [5 x i8] c"@PJL\00", align 1
@.str.12 = private unnamed_addr constant [24 x i8] c"wrong signature: %.14s\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32)* @print_something to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @print_something(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca [1024 x i8], align 16
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.TYPE_3__, align 8
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  store i32 %0, i32* %2, align 4
  %11 = load i32, i32* @MAX_PATH, align 4
  %12 = zext i32 %11 to i64
  %13 = call i8* @llvm.stacksave()
  store i8* %13, i8** %5, align 8
  %14 = alloca i8, i64 %12, align 16
  store i64 %12, i64* %6, align 8
  %15 = load i32, i32* @MAX_PATH, align 4
  %16 = zext i32 %15 to i64
  %17 = alloca i8, i64 %16, align 16
  store i64 %16, i64* %7, align 8
  %18 = trunc i64 %12 to i32
  %19 = call i32 @GetTempPathA(i32 %18, i8* %14)
  %20 = call i32 @GetTempFileNameA(i8* %14, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i32 0, i8* %17)
  %21 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %8, i32 0, i32 0
  store i32 40, i32* %21, align 8
  %22 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %8, i32 0, i32 1
  store i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i64 0, i64 0), i8** %22, align 8
  %23 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %8, i32 0, i32 2
  store i8* %17, i8** %23, align 8
  %24 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %8, i32 0, i32 4
  store i32* null, i32** %24, align 8
  %25 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %8, i32 0, i32 3
  store i64 0, i64* %25, align 8
  %26 = load i32, i32* %2, align 4
  %27 = call i32 @StartDocA(i32 %26, %struct.TYPE_3__* %8)
  store i32 %27, i32* %9, align 4
  %28 = load i32, i32* %9, align 4
  %29 = icmp sgt i32 %28, 0
  %30 = zext i1 %29 to i32
  %31 = load i32, i32* %9, align 4
  %32 = call i32 (i32, i8*, ...) @ok(i32 %30, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.2, i64 0, i64 0), i32 %31)
  %33 = getelementptr inbounds [1024 x i8], [1024 x i8]* %3, i64 0, i64 0
  %34 = getelementptr inbounds i8, i8* %33, i64 2
  %35 = call i32 @strcpy(i8* %34, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.3, i64 0, i64 0))
  %36 = getelementptr inbounds [1024 x i8], [1024 x i8]* %3, i64 0, i64 0
  %37 = getelementptr inbounds i8, i8* %36, i64 2
  %38 = call i32 @strlen(i8* %37)
  %39 = getelementptr inbounds [1024 x i8], [1024 x i8]* %3, i64 0, i64 0
  %40 = bitcast i8* %39 to i32*
  store i32 %38, i32* %40, align 16
  %41 = load i32, i32* %2, align 4
  %42 = load i32, i32* @POSTSCRIPT_PASSTHROUGH, align 4
  %43 = getelementptr inbounds [1024 x i8], [1024 x i8]* %3, i64 0, i64 0
  %44 = call i32 @Escape(i32 %41, i32 %42, i32 0, i8* %43, i32* null)
  store i32 %44, i32* %9, align 4
  %45 = load i32, i32* %9, align 4
  %46 = getelementptr inbounds [1024 x i8], [1024 x i8]* %3, i64 0, i64 0
  %47 = bitcast i8* %46 to i32*
  %48 = load i32, i32* %47, align 16
  %49 = icmp eq i32 %45, %48
  %50 = zext i1 %49 to i32
  %51 = load i32, i32* %9, align 4
  %52 = call i32 (i32, i8*, ...) @ok(i32 %50, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.4, i64 0, i64 0), i32 %51)
  %53 = getelementptr inbounds [1024 x i8], [1024 x i8]* %3, i64 0, i64 0
  %54 = call i32 @strcpy(i8* %53, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.5, i64 0, i64 0))
  %55 = load i32, i32* %2, align 4
  %56 = load i32, i32* @DOWNLOADHEADER, align 4
  %57 = getelementptr inbounds [1024 x i8], [1024 x i8]* %3, i64 0, i64 0
  %58 = call i32 @ExtEscape(i32 %55, i32 %56, i32 0, i32* null, i32 1024, i8* %57)
  store i32 %58, i32* %9, align 4
  %59 = load i32, i32* %9, align 4
  %60 = icmp eq i32 %59, 1
  %61 = zext i1 %60 to i32
  %62 = call i32 (i32, i8*, ...) @ok(i32 %61, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.6, i64 0, i64 0))
  %63 = getelementptr inbounds [1024 x i8], [1024 x i8]* %3, i64 0, i64 0
  %64 = call i64 @strcmp(i8* %63, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.5, i64 0, i64 0))
  %65 = icmp ne i64 %64, 0
  %66 = zext i1 %65 to i32
  %67 = call i32 (i32, i8*, ...) @ok(i32 %66, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.6, i64 0, i64 0))
  %68 = getelementptr inbounds [1024 x i8], [1024 x i8]* %3, i64 0, i64 0
  %69 = getelementptr inbounds i8, i8* %68, i64 2
  %70 = call i32 @strcpy(i8* %69, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.7, i64 0, i64 0))
  %71 = getelementptr inbounds [1024 x i8], [1024 x i8]* %3, i64 0, i64 0
  %72 = getelementptr inbounds i8, i8* %71, i64 2
  %73 = call i32 @strlen(i8* %72)
  %74 = getelementptr inbounds [1024 x i8], [1024 x i8]* %3, i64 0, i64 0
  %75 = bitcast i8* %74 to i32*
  store i32 %73, i32* %75, align 16
  %76 = load i32, i32* %2, align 4
  %77 = load i32, i32* @POSTSCRIPT_PASSTHROUGH, align 4
  %78 = getelementptr inbounds [1024 x i8], [1024 x i8]* %3, i64 0, i64 0
  %79 = call i32 @Escape(i32 %76, i32 %77, i32 0, i8* %78, i32* null)
  store i32 %79, i32* %9, align 4
  %80 = load i32, i32* %9, align 4
  %81 = getelementptr inbounds [1024 x i8], [1024 x i8]* %3, i64 0, i64 0
  %82 = bitcast i8* %81 to i32*
  %83 = load i32, i32* %82, align 16
  %84 = icmp eq i32 %80, %83
  %85 = zext i1 %84 to i32
  %86 = load i32, i32* %9, align 4
  %87 = call i32 (i32, i8*, ...) @ok(i32 %85, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.4, i64 0, i64 0), i32 %86)
  %88 = load i32, i32* %2, align 4
  %89 = call i32 @EndDoc(i32 %88)
  store i32 %89, i32* %9, align 4
  %90 = load i32, i32* %9, align 4
  %91 = icmp eq i32 %90, 1
  %92 = zext i1 %91 to i32
  %93 = call i32 (i32, i8*, ...) @ok(i32 %92, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.8, i64 0, i64 0))
  %94 = load i32, i32* @GENERIC_READ, align 4
  %95 = load i32, i32* @OPEN_EXISTING, align 4
  %96 = call i64 @CreateFileA(i8* %17, i32 %94, i32 0, i32* null, i32 %95, i32 0, i32 0)
  store i64 %96, i64* %10, align 8
  %97 = load i64, i64* %10, align 8
  %98 = load i64, i64* @INVALID_HANDLE_VALUE, align 8
  %99 = icmp ne i64 %97, %98
  %100 = zext i1 %99 to i32
  %101 = call i32 (i32, i8*, ...) @ok(i32 %100, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.9, i64 0, i64 0))
  %102 = getelementptr inbounds [1024 x i8], [1024 x i8]* %3, i64 0, i64 0
  %103 = call i32 @memset(i8* %102, i32 0, i32 1024)
  %104 = load i64, i64* %10, align 8
  %105 = getelementptr inbounds [1024 x i8], [1024 x i8]* %3, i64 0, i64 0
  %106 = call i32 @ReadFile(i64 %104, i8* %105, i32 1024, i32* %9, i32* null)
  store i32 %106, i32* %9, align 4
  %107 = load i32, i32* %9, align 4
  %108 = call i32 (i32, i8*, ...) @ok(i32 %107, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.10, i64 0, i64 0))
  %109 = load i64, i64* %10, align 8
  %110 = call i32 @CloseHandle(i64 %109)
  %111 = getelementptr inbounds [1024 x i8], [1024 x i8]* %3, i64 0, i64 1023
  store i8 0, i8* %111, align 1
  %112 = getelementptr inbounds [1024 x i8], [1024 x i8]* %3, i64 0, i64 0
  store i8* %112, i8** %4, align 8
  br label %113

113:                                              ; preds = %156, %1
  %114 = load i8*, i8** %4, align 8
  %115 = load i8, i8* %114, align 1
  %116 = icmp ne i8 %115, 0
  br i1 %116, label %117, label %157

117:                                              ; preds = %113
  %118 = load i8*, i8** %4, align 8
  %119 = getelementptr inbounds i8, i8* %118, i64 0
  %120 = load i8, i8* %119, align 1
  %121 = sext i8 %120 to i32
  %122 = icmp eq i32 %121, 27
  br i1 %122, label %123, label %129

123:                                              ; preds = %117
  %124 = load i8*, i8** %4, align 8
  %125 = getelementptr inbounds i8, i8* %124, i64 1
  %126 = load i8, i8* %125, align 1
  %127 = sext i8 %126 to i32
  %128 = icmp eq i32 %127, 37
  br i1 %128, label %134, label %129

129:                                              ; preds = %123, %117
  %130 = load i8*, i8** %4, align 8
  %131 = call i64 @memcmp(i8* %130, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.11, i64 0, i64 0), i32 4)
  %132 = icmp ne i64 %131, 0
  br i1 %132, label %133, label %134

133:                                              ; preds = %129
  br label %157

134:                                              ; preds = %129, %123
  %135 = load i8*, i8** %4, align 8
  %136 = call i8* @strchr(i8* %135, i8 signext 10)
  store i8* %136, i8** %4, align 8
  %137 = load i8*, i8** %4, align 8
  %138 = icmp ne i8* %137, null
  br i1 %138, label %140, label %139

139:                                              ; preds = %134
  br label %157

140:                                              ; preds = %134
  br label %141

141:                                              ; preds = %153, %140
  %142 = load i8*, i8** %4, align 8
  %143 = load i8, i8* %142, align 1
  %144 = sext i8 %143 to i32
  %145 = icmp eq i32 %144, 13
  br i1 %145, label %151, label %146

146:                                              ; preds = %141
  %147 = load i8*, i8** %4, align 8
  %148 = load i8, i8* %147, align 1
  %149 = sext i8 %148 to i32
  %150 = icmp eq i32 %149, 10
  br label %151

151:                                              ; preds = %146, %141
  %152 = phi i1 [ true, %141 ], [ %150, %146 ]
  br i1 %152, label %153, label %156

153:                                              ; preds = %151
  %154 = load i8*, i8** %4, align 8
  %155 = getelementptr inbounds i8, i8* %154, i32 1
  store i8* %155, i8** %4, align 8
  br label %141

156:                                              ; preds = %151
  br label %113

157:                                              ; preds = %139, %133, %113
  %158 = load i8*, i8** %4, align 8
  %159 = icmp ne i8* %158, null
  br i1 %159, label %160, label %165

160:                                              ; preds = %157
  %161 = load i8*, i8** %4, align 8
  %162 = call i64 @memcmp(i8* %161, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @print_something.psadobe, i64 0, i64 0), i32 10)
  %163 = icmp ne i64 %162, 0
  %164 = xor i1 %163, true
  br label %165

165:                                              ; preds = %160, %157
  %166 = phi i1 [ false, %157 ], [ %164, %160 ]
  %167 = zext i1 %166 to i32
  %168 = load i8*, i8** %4, align 8
  %169 = icmp ne i8* %168, null
  br i1 %169, label %170, label %172

170:                                              ; preds = %165
  %171 = load i8*, i8** %4, align 8
  br label %174

172:                                              ; preds = %165
  %173 = getelementptr inbounds [1024 x i8], [1024 x i8]* %3, i64 0, i64 0
  br label %174

174:                                              ; preds = %172, %170
  %175 = phi i8* [ %171, %170 ], [ %173, %172 ]
  %176 = call i32 (i32, i8*, ...) @ok(i32 %167, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.12, i64 0, i64 0), i8* %175)
  %177 = call i32 @DeleteFileA(i8* %17)
  %178 = load i8*, i8** %5, align 8
  call void @llvm.stackrestore(i8* %178)
  ret void
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @GetTempPathA(i32, i8*) #2

declare dso_local i32 @GetTempFileNameA(i8*, i8*, i32, i8*) #2

declare dso_local i32 @StartDocA(i32, %struct.TYPE_3__*) #2

declare dso_local i32 @ok(i32, i8*, ...) #2

declare dso_local i32 @strcpy(i8*, i8*) #2

declare dso_local i32 @strlen(i8*) #2

declare dso_local i32 @Escape(i32, i32, i32, i8*, i32*) #2

declare dso_local i32 @ExtEscape(i32, i32, i32, i32*, i32, i8*) #2

declare dso_local i64 @strcmp(i8*, i8*) #2

declare dso_local i32 @EndDoc(i32) #2

declare dso_local i64 @CreateFileA(i8*, i32, i32, i32*, i32, i32, i32) #2

declare dso_local i32 @memset(i8*, i32, i32) #2

declare dso_local i32 @ReadFile(i64, i8*, i32, i32*, i32*) #2

declare dso_local i32 @CloseHandle(i64) #2

declare dso_local i64 @memcmp(i8*, i8*, i32) #2

declare dso_local i8* @strchr(i8*, i8 signext) #2

declare dso_local i32 @DeleteFileA(i8*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
