; ModuleID = '/home/carl/AnghaBench/vlc/test/dynamicoverlay/extr_overlay-test.c_main.c'
source_filename = "/home/carl/AnghaBench/vlc/test/dynamicoverlay/extr_overlay-test.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [73 x i8] c"Incorrect number of parameters.\0AUsage is: %s command-fifo response-fifo\0A\00", align 1
@.str.1 = private unnamed_addr constant [35 x i8] c"Creating shared memory for RGBA...\00", align 1
@IPC_PRIVATE = common dso_local global i32 0, align 4
@WIDTH = common dso_local global i32 0, align 4
@HEIGHT = common dso_local global i32 0, align 4
@S_IRWXU = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [9 x i8] c" failed\0A\00", align 1
@.str.3 = private unnamed_addr constant [25 x i8] c" done, ID is %d. Text...\00", align 1
@TEXTSIZE = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [17 x i8] c" done, ID is %d\0A\00", align 1
@.str.5 = private unnamed_addr constant [36 x i8] c"Attaching shared memory for RGBA...\00", align 1
@p_imageRGBA = common dso_local global i8* null, align 8
@.str.6 = private unnamed_addr constant [15 x i8] c" done. Text...\00", align 1
@p_text = common dso_local global i8* null, align 8
@.str.7 = private unnamed_addr constant [7 x i8] c" done\0A\00", align 1
@.str.8 = private unnamed_addr constant [48 x i8] c"Queueing shared memory for destruction, RGBA...\00", align 1
@IPC_RMID = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [19 x i8] c"Generating data...\00", align 1
@.str.10 = private unnamed_addr constant [16 x i8] c"Making FIFOs...\00", align 1
@errno = common dso_local global i64 0, align 8
@EEXIST = common dso_local global i64 0, align 8
@.str.11 = private unnamed_addr constant [25 x i8] c" input already exists...\00", align 1
@.str.12 = private unnamed_addr constant [26 x i8] c" output already exists...\00", align 1
@.str.13 = private unnamed_addr constant [130 x i8] c"Please make sure vlc is running.\0AYou should append parameters similar to the following:\0A--sub-source overlay{input=%s,output=%s}\0A\00", align 1
@.str.14 = private unnamed_addr constant [17 x i8] c"Opening FIFOs...\00", align 1
@.str.15 = private unnamed_addr constant [2 x i8] c"w\00", align 1
@.str.16 = private unnamed_addr constant [2 x i8] c"r\00", align 1
@.str.17 = private unnamed_addr constant [5 x i8] c"RGBA\00", align 1
@.str.18 = private unnamed_addr constant [5 x i8] c"TEXT\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  %12 = load i32, i32* %4, align 4
  %13 = icmp ne i32 %12, 3
  br i1 %13, label %14, label %20

14:                                               ; preds = %2
  %15 = load i8**, i8*** %5, align 8
  %16 = getelementptr inbounds i8*, i8** %15, i64 0
  %17 = load i8*, i8** %16, align 8
  %18 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([73 x i8], [73 x i8]* @.str, i64 0, i64 0), i8* %17)
  %19 = call i32 @exit(i32 -2) #3
  unreachable

20:                                               ; preds = %2
  %21 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.1, i64 0, i64 0))
  %22 = load i32, i32* @IPC_PRIVATE, align 4
  %23 = load i32, i32* @WIDTH, align 4
  %24 = load i32, i32* @HEIGHT, align 4
  %25 = mul nsw i32 %23, %24
  %26 = mul nsw i32 %25, 4
  %27 = load i32, i32* @S_IRWXU, align 4
  %28 = call i32 @shmget(i32 %22, i32 %26, i32 %27)
  store i32 %28, i32* %6, align 4
  %29 = load i32, i32* %6, align 4
  %30 = icmp eq i32 %29, -1
  br i1 %30, label %31, label %34

31:                                               ; preds = %20
  %32 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0))
  %33 = call i32 @exit(i32 -1) #3
  unreachable

34:                                               ; preds = %20
  %35 = load i32, i32* %6, align 4
  %36 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.3, i64 0, i64 0), i32 %35)
  %37 = load i32, i32* @IPC_PRIVATE, align 4
  %38 = load i32, i32* @TEXTSIZE, align 4
  %39 = load i32, i32* @S_IRWXU, align 4
  %40 = call i32 @shmget(i32 %37, i32 %38, i32 %39)
  store i32 %40, i32* %7, align 4
  %41 = load i32, i32* %7, align 4
  %42 = icmp eq i32 %41, -1
  br i1 %42, label %43, label %46

43:                                               ; preds = %34
  %44 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0))
  %45 = call i32 @exit(i32 -1) #3
  unreachable

46:                                               ; preds = %34
  %47 = load i32, i32* %7, align 4
  %48 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.4, i64 0, i64 0), i32 %47)
  %49 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.5, i64 0, i64 0))
  %50 = load i32, i32* %6, align 4
  %51 = call i8* @shmat(i32 %50, i32* null, i32 0)
  store i8* %51, i8** @p_imageRGBA, align 8
  %52 = load i8*, i8** @p_imageRGBA, align 8
  %53 = icmp eq i8* %52, inttoptr (i64 -1 to i8*)
  br i1 %53, label %54, label %57

54:                                               ; preds = %46
  %55 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0))
  %56 = call i32 @exit(i32 -1) #3
  unreachable

57:                                               ; preds = %46
  %58 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.6, i64 0, i64 0))
  %59 = load i32, i32* %7, align 4
  %60 = call i8* @shmat(i32 %59, i32* null, i32 0)
  store i8* %60, i8** @p_text, align 8
  %61 = load i8*, i8** @p_text, align 8
  %62 = icmp eq i8* %61, inttoptr (i64 -1 to i8*)
  br i1 %62, label %63, label %66

63:                                               ; preds = %57
  %64 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0))
  %65 = call i32 @exit(i32 -1) #3
  unreachable

66:                                               ; preds = %57
  %67 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.7, i64 0, i64 0))
  %68 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.8, i64 0, i64 0))
  %69 = load i32, i32* %6, align 4
  %70 = load i32, i32* @IPC_RMID, align 4
  %71 = call i32 @shmctl(i32 %69, i32 %70, i32 0)
  %72 = icmp eq i32 %71, -1
  br i1 %72, label %73, label %76

73:                                               ; preds = %66
  %74 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0))
  %75 = call i32 @exit(i32 -1) #3
  unreachable

76:                                               ; preds = %66
  %77 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.6, i64 0, i64 0))
  %78 = load i32, i32* %7, align 4
  %79 = load i32, i32* @IPC_RMID, align 4
  %80 = call i32 @shmctl(i32 %78, i32 %79, i32 0)
  %81 = icmp eq i32 %80, -1
  br i1 %81, label %82, label %85

82:                                               ; preds = %76
  %83 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0))
  %84 = call i32 @exit(i32 -1) #3
  unreachable

85:                                               ; preds = %76
  %86 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.7, i64 0, i64 0))
  %87 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.9, i64 0, i64 0))
  %88 = call i32 (...) @DataCreate()
  %89 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.7, i64 0, i64 0))
  %90 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.10, i64 0, i64 0))
  %91 = load i8**, i8*** %5, align 8
  %92 = getelementptr inbounds i8*, i8** %91, i64 1
  %93 = load i8*, i8** %92, align 8
  %94 = load i32, i32* @S_IRWXU, align 4
  %95 = call i64 @mkfifo(i8* %93, i32 %94)
  %96 = icmp ne i64 %95, 0
  br i1 %96, label %97, label %106

97:                                               ; preds = %85
  %98 = load i64, i64* @errno, align 8
  %99 = load i64, i64* @EEXIST, align 8
  %100 = icmp ne i64 %98, %99
  br i1 %100, label %101, label %104

101:                                              ; preds = %97
  %102 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0))
  %103 = call i32 @exit(i32 -1) #3
  unreachable

104:                                              ; preds = %97
  %105 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.11, i64 0, i64 0))
  br label %106

106:                                              ; preds = %104, %85
  %107 = load i8**, i8*** %5, align 8
  %108 = getelementptr inbounds i8*, i8** %107, i64 2
  %109 = load i8*, i8** %108, align 8
  %110 = load i32, i32* @S_IRWXU, align 4
  %111 = call i64 @mkfifo(i8* %109, i32 %110)
  %112 = icmp ne i64 %111, 0
  br i1 %112, label %113, label %122

113:                                              ; preds = %106
  %114 = load i64, i64* @errno, align 8
  %115 = load i64, i64* @EEXIST, align 8
  %116 = icmp ne i64 %114, %115
  br i1 %116, label %117, label %120

117:                                              ; preds = %113
  %118 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0))
  %119 = call i32 @exit(i32 -1) #3
  unreachable

120:                                              ; preds = %113
  %121 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.12, i64 0, i64 0))
  br label %122

122:                                              ; preds = %120, %106
  %123 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.7, i64 0, i64 0))
  %124 = load i8**, i8*** %5, align 8
  %125 = getelementptr inbounds i8*, i8** %124, i64 1
  %126 = load i8*, i8** %125, align 8
  %127 = load i8**, i8*** %5, align 8
  %128 = getelementptr inbounds i8*, i8** %127, i64 2
  %129 = load i8*, i8** %128, align 8
  %130 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([130 x i8], [130 x i8]* @.str.13, i64 0, i64 0), i8* %126, i8* %129)
  %131 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.14, i64 0, i64 0))
  %132 = load i8**, i8*** %5, align 8
  %133 = getelementptr inbounds i8*, i8** %132, i64 1
  %134 = load i8*, i8** %133, align 8
  %135 = call i32* @fopen(i8* %134, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.15, i64 0, i64 0))
  store i32* %135, i32** %8, align 8
  %136 = load i32*, i32** %8, align 8
  %137 = icmp eq i32* %136, null
  br i1 %137, label %138, label %141

138:                                              ; preds = %122
  %139 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0))
  %140 = call i32 @exit(i32 -1) #3
  unreachable

141:                                              ; preds = %122
  %142 = load i8**, i8*** %5, align 8
  %143 = getelementptr inbounds i8*, i8** %142, i64 2
  %144 = load i8*, i8** %143, align 8
  %145 = call i32* @fopen(i8* %144, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.16, i64 0, i64 0))
  store i32* %145, i32** %9, align 8
  %146 = load i32*, i32** %9, align 8
  %147 = icmp eq i32* %146, null
  br i1 %147, label %148, label %151

148:                                              ; preds = %141
  %149 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0))
  %150 = call i32 @exit(i32 -1) #3
  unreachable

151:                                              ; preds = %141
  %152 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.7, i64 0, i64 0))
  %153 = load i32*, i32** %8, align 8
  %154 = load i32*, i32** %9, align 8
  %155 = call i32 @GenImage(i32* %153, i32* %154)
  store i32 %155, i32* %10, align 4
  %156 = load i32*, i32** %8, align 8
  %157 = load i32*, i32** %9, align 8
  %158 = call i32 @GenImage(i32* %156, i32* %157)
  store i32 %158, i32* %11, align 4
  %159 = load i32*, i32** %8, align 8
  %160 = load i32*, i32** %9, align 8
  %161 = load i32, i32* %10, align 4
  %162 = load i32, i32* @WIDTH, align 4
  %163 = load i32, i32* @HEIGHT, align 4
  %164 = load i32, i32* %6, align 4
  %165 = call i32 @DataSharedMem(i32* %159, i32* %160, i32 %161, i32 %162, i32 %163, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.17, i64 0, i64 0), i32 %164)
  %166 = load i32*, i32** %8, align 8
  %167 = load i32*, i32** %9, align 8
  %168 = load i32, i32* %11, align 4
  %169 = load i32, i32* @TEXTSIZE, align 4
  %170 = load i32, i32* %7, align 4
  %171 = call i32 @DataSharedMem(i32* %166, i32* %167, i32 %168, i32 %169, i32 1, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.18, i64 0, i64 0), i32 %170)
  %172 = load i32*, i32** %8, align 8
  %173 = load i32*, i32** %9, align 8
  %174 = load i32, i32* %10, align 4
  %175 = call i32 @BasicTest(i32* %172, i32* %173, i32 %174)
  %176 = load i32*, i32** %8, align 8
  %177 = load i32*, i32** %9, align 8
  %178 = load i32, i32* %11, align 4
  %179 = call i32 @BasicTest(i32* %176, i32* %177, i32 %178)
  %180 = load i32*, i32** %8, align 8
  %181 = load i32*, i32** %9, align 8
  %182 = load i32, i32* %11, align 4
  %183 = call i32 @TextTest(i32* %180, i32* %181, i32 %182)
  %184 = load i32*, i32** %8, align 8
  %185 = load i32*, i32** %9, align 8
  %186 = load i32, i32* %10, align 4
  %187 = call i32 @DeleteImage(i32* %184, i32* %185, i32 %186)
  %188 = load i32*, i32** %8, align 8
  %189 = load i32*, i32** %9, align 8
  %190 = load i32, i32* %11, align 4
  %191 = call i32 @DeleteImage(i32* %188, i32* %189, i32 %190)
  %192 = load i32, i32* %3, align 4
  ret i32 %192
}

declare dso_local i32 @printf(i8*, ...) #1

; Function Attrs: noreturn
declare dso_local i32 @exit(i32) #2

declare dso_local i32 @shmget(i32, i32, i32) #1

declare dso_local i8* @shmat(i32, i32*, i32) #1

declare dso_local i32 @shmctl(i32, i32, i32) #1

declare dso_local i32 @DataCreate(...) #1

declare dso_local i64 @mkfifo(i8*, i32) #1

declare dso_local i32* @fopen(i8*, i8*) #1

declare dso_local i32 @GenImage(i32*, i32*) #1

declare dso_local i32 @DataSharedMem(i32*, i32*, i32, i32, i32, i8*, i32) #1

declare dso_local i32 @BasicTest(i32*, i32*, i32) #1

declare dso_local i32 @TextTest(i32*, i32*, i32) #1

declare dso_local i32 @DeleteImage(i32*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
