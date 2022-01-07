; ModuleID = '/home/carl/AnghaBench/xhyve/src/firmware/extr_fbsd.c_fbsd_load.c'
source_filename = "/home/carl/AnghaBench/xhyve/src/firmware/extr_fbsd.c_fbsd_load.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i8*, i64, i32, i64 }
%struct.TYPE_7__ = type { i32 }

@host_base = common dso_local global i32* null, align 8
@STDIN_FILENO = common dso_local global i64 0, align 8
@consin_fd = common dso_local global i64 0, align 8
@STDOUT_FILENO = common dso_local global i64 0, align 8
@consout_fd = common dso_local global i64 0, align 8
@config = common dso_local global %struct.TYPE_8__ zeroinitializer, align 8
@stderr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [22 x i8] c"fbsd: no boot volume\0A\00", align 1
@term = common dso_local global %struct.TYPE_7__ zeroinitializer, align 4
@oldterm = common dso_local global %struct.TYPE_7__ zeroinitializer, align 4
@CLOCAL = common dso_local global i32 0, align 4
@TCSAFLUSH = common dso_local global i32 0, align 4
@RTLD_LOCAL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1
@.str.2 = private unnamed_addr constant [12 x i8] c"loader_main\00", align 1
@.str.3 = private unnamed_addr constant [25 x i8] c"smbios.bios.vendor=BHYVE\00", align 1
@.str.4 = private unnamed_addr constant [14 x i8] c"boot_serial=1\00", align 1
@exec_done = common dso_local global i32 0, align 4
@cb = common dso_local global i32 0, align 4
@USERBOOT_VERSION_3 = common dso_local global i32 0, align 4
@ndisks = common dso_local global i32 0, align 4
@disk_fd = common dso_local global i64* null, align 8
@vcpu_rip = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @fbsd_load() #0 {
  %1 = alloca i8*, align 8
  %2 = alloca i32, align 4
  %3 = alloca i32 (i32*, i32*, i32, i32)*, align 8
  store i32* null, i32** @host_base, align 8
  %4 = load i64, i64* @STDIN_FILENO, align 8
  store i64 %4, i64* @consin_fd, align 8
  %5 = load i64, i64* @STDOUT_FILENO, align 8
  store i64 %5, i64* @consout_fd, align 8
  %6 = load i64, i64* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @config, i32 0, i32 1), align 8
  %7 = icmp ne i64 %6, 0
  br i1 %7, label %8, label %11

8:                                                ; preds = %0
  %9 = load i64, i64* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @config, i32 0, i32 1), align 8
  %10 = call i32 @altcons_open(i64 %9)
  br label %11

11:                                               ; preds = %8, %0
  %12 = load i64, i64* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @config, i32 0, i32 3), align 8
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %17

14:                                               ; preds = %11
  %15 = load i64, i64* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @config, i32 0, i32 3), align 8
  %16 = call i32 @disk_open(i64 %15)
  br label %21

17:                                               ; preds = %11
  %18 = load i32, i32* @stderr, align 4
  %19 = call i32 (i32, i8*, ...) @fprintf(i32 %18, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0))
  %20 = call i32 @exit(i32 -1) #5
  unreachable

21:                                               ; preds = %14
  %22 = load i8*, i8** getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @config, i32 0, i32 0), align 8
  %23 = icmp ne i8* %22, null
  br i1 %23, label %24, label %27

24:                                               ; preds = %21
  %25 = load i8*, i8** getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @config, i32 0, i32 0), align 8
  %26 = call i32 @addenv(i8* %25)
  br label %27

27:                                               ; preds = %24, %21
  %28 = load i64, i64* @consout_fd, align 8
  %29 = call i32 @tcgetattr(i64 %28, %struct.TYPE_7__* @term)
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 bitcast (%struct.TYPE_7__* @oldterm to i8*), i8* align 4 bitcast (%struct.TYPE_7__* @term to i8*), i64 4, i1 false)
  %30 = call i32 @cfmakeraw(%struct.TYPE_7__* @term)
  %31 = load i32, i32* @CLOCAL, align 4
  %32 = load i32, i32* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @term, i32 0, i32 0), align 4
  %33 = or i32 %32, %31
  store i32 %33, i32* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @term, i32 0, i32 0), align 4
  %34 = load i64, i64* @consout_fd, align 8
  %35 = load i32, i32* @TCSAFLUSH, align 4
  %36 = call i32 @tcsetattr(i64 %34, i32 %35, %struct.TYPE_7__* @term)
  %37 = load i32, i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @config, i32 0, i32 2), align 8
  %38 = load i32, i32* @RTLD_LOCAL, align 4
  %39 = call i8* @dlopen(i32 %37, i32 %38)
  store i8* %39, i8** %1, align 8
  %40 = load i8*, i8** %1, align 8
  %41 = icmp ne i8* %40, null
  br i1 %41, label %47, label %42

42:                                               ; preds = %27
  %43 = load i32, i32* @stderr, align 4
  %44 = call i8* (...) @dlerror()
  %45 = call i32 (i32, i8*, ...) @fprintf(i32 %43, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), i8* %44)
  %46 = call i32 @exit(i32 -1) #5
  unreachable

47:                                               ; preds = %27
  %48 = load i8*, i8** %1, align 8
  %49 = call i64 @dlsym(i8* %48, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.2, i64 0, i64 0))
  %50 = inttoptr i64 %49 to i32 (i32*, i32*, i32, i32)*
  store i32 (i32*, i32*, i32, i32)* %50, i32 (i32*, i32*, i32, i32)** %3, align 8
  %51 = load i32 (i32*, i32*, i32, i32)*, i32 (i32*, i32*, i32, i32)** %3, align 8
  %52 = icmp ne i32 (i32*, i32*, i32, i32)* %51, null
  br i1 %52, label %58, label %53

53:                                               ; preds = %47
  %54 = load i32, i32* @stderr, align 4
  %55 = call i8* (...) @dlerror()
  %56 = call i32 (i32, i8*, ...) @fprintf(i32 %54, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), i8* %55)
  %57 = call i32 @exit(i32 -1) #5
  unreachable

58:                                               ; preds = %47
  %59 = call i32 @addenv(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.3, i64 0, i64 0))
  %60 = call i32 @addenv(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.4, i64 0, i64 0))
  %61 = load i32, i32* @exec_done, align 4
  %62 = call i32 @setjmp(i32 %61) #6
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %69, label %64

64:                                               ; preds = %58
  %65 = load i32 (i32*, i32*, i32, i32)*, i32 (i32*, i32*, i32, i32)** %3, align 8
  %66 = load i32, i32* @USERBOOT_VERSION_3, align 4
  %67 = load i32, i32* @ndisks, align 4
  %68 = call i32 %65(i32* @cb, i32* null, i32 %66, i32 %67)
  br label %69

69:                                               ; preds = %64, %58
  store i32 0, i32* %2, align 4
  br label %70

70:                                               ; preds = %81, %69
  %71 = load i32, i32* %2, align 4
  %72 = load i32, i32* @ndisks, align 4
  %73 = icmp slt i32 %71, %72
  br i1 %73, label %74, label %84

74:                                               ; preds = %70
  %75 = load i64*, i64** @disk_fd, align 8
  %76 = load i32, i32* %2, align 4
  %77 = sext i32 %76 to i64
  %78 = getelementptr inbounds i64, i64* %75, i64 %77
  %79 = load i64, i64* %78, align 8
  %80 = call i32 @close(i64 %79)
  br label %81

81:                                               ; preds = %74
  %82 = load i32, i32* %2, align 4
  %83 = add nsw i32 %82, 1
  store i32 %83, i32* %2, align 4
  br label %70

84:                                               ; preds = %70
  %85 = load i64, i64* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @config, i32 0, i32 1), align 8
  %86 = icmp ne i64 %85, 0
  br i1 %86, label %87, label %95

87:                                               ; preds = %84
  %88 = load i64, i64* @consin_fd, align 8
  %89 = load i64, i64* @consout_fd, align 8
  %90 = icmp eq i64 %88, %89
  %91 = zext i1 %90 to i32
  %92 = call i32 @assert(i32 %91)
  %93 = load i64, i64* @consin_fd, align 8
  %94 = call i32 @close(i64 %93)
  br label %95

95:                                               ; preds = %87, %84
  %96 = load i32, i32* @vcpu_rip, align 4
  ret i32 %96
}

declare dso_local i32 @altcons_open(i64) #1

declare dso_local i32 @disk_open(i64) #1

declare dso_local i32 @fprintf(i32, i8*, ...) #1

; Function Attrs: noreturn
declare dso_local i32 @exit(i32) #2

declare dso_local i32 @addenv(i8*) #1

declare dso_local i32 @tcgetattr(i64, %struct.TYPE_7__*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #3

declare dso_local i32 @cfmakeraw(%struct.TYPE_7__*) #1

declare dso_local i32 @tcsetattr(i64, i32, %struct.TYPE_7__*) #1

declare dso_local i8* @dlopen(i32, i32) #1

declare dso_local i8* @dlerror(...) #1

declare dso_local i64 @dlsym(i8*, i8*) #1

; Function Attrs: returns_twice
declare dso_local i32 @setjmp(i32) #4

declare dso_local i32 @close(i64) #1

declare dso_local i32 @assert(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { argmemonly nounwind willreturn }
attributes #4 = { returns_twice "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { noreturn }
attributes #6 = { returns_twice }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
