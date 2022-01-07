; ModuleID = '/home/carl/AnghaBench/zfs/cmd/raidz_test/extr_raidz_test.c_main.c'
source_filename = "/home/carl/AnghaBench/zfs/cmd/raidz_test/extr_raidz_test.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i64, i64 }
%struct.sigaction = type { i64, i32, i32 }

@gdb = common dso_local global i32 0, align 4
@gdb_tmpl = common dso_local global i8* null, align 8
@sig_handler = common dso_local global i32 0, align 4
@SIGSEGV = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [39 x i8] c"raidz_test: cannot catch SIGSEGV: %s.\0A\00", align 1
@errno = common dso_local global i32 0, align 4
@EXIT_FAILURE = common dso_local global i32 0, align 4
@stdout = common dso_local global i32 0, align 4
@_IOLBF = common dso_local global i32 0, align 4
@FREAD = common dso_local global i32 0, align 4
@SPA_MAXBLOCKSIZE = common dso_local global i32 0, align 4
@UMEM_NOFAIL = common dso_local global i32 0, align 4
@rand_data = common dso_local global i32* null, align 8
@PROT_READ = common dso_local global i32 0, align 4
@rto_opts = common dso_local global %struct.TYPE_2__ zeroinitializer, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.sigaction, align 8
  %8 = alloca i32, align 4
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  store i32 0, i32* %8, align 4
  %9 = load i32, i32* @gdb, align 4
  %10 = load i8*, i8** @gdb_tmpl, align 8
  %11 = call i32 (...) @getpid()
  %12 = call i32 @sprintf(i32 %9, i8* %10, i32 %11)
  %13 = load i32, i32* @sig_handler, align 4
  %14 = getelementptr inbounds %struct.sigaction, %struct.sigaction* %7, i32 0, i32 2
  store i32 %13, i32* %14, align 4
  %15 = getelementptr inbounds %struct.sigaction, %struct.sigaction* %7, i32 0, i32 1
  %16 = call i32 @sigemptyset(i32* %15)
  %17 = getelementptr inbounds %struct.sigaction, %struct.sigaction* %7, i32 0, i32 0
  store i64 0, i64* %17, align 8
  %18 = load i32, i32* @SIGSEGV, align 4
  %19 = call i64 @sigaction(i32 %18, %struct.sigaction* %7, i32* null)
  %20 = icmp slt i64 %19, 0
  br i1 %20, label %21, label %27

21:                                               ; preds = %2
  %22 = load i32, i32* @errno, align 4
  %23 = call i32 @strerror(i32 %22)
  %24 = call i32 @ERR(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0), i32 %23)
  %25 = load i32, i32* @EXIT_FAILURE, align 4
  %26 = call i32 @exit(i32 %25) #3
  unreachable

27:                                               ; preds = %2
  %28 = load i32, i32* @stdout, align 4
  %29 = load i32, i32* @_IOLBF, align 4
  %30 = call i32 @setvbuf(i32 %28, i32* null, i32 %29, i32 0)
  %31 = load i8**, i8*** %5, align 8
  %32 = call i32 @dprintf_setup(i32* %4, i8** %31)
  %33 = load i32, i32* %4, align 4
  %34 = load i8**, i8*** %5, align 8
  %35 = call i32 @process_options(i32 %33, i8** %34)
  %36 = load i32, i32* @FREAD, align 4
  %37 = call i32 @kernel_init(i32 %36)
  %38 = load i32, i32* @SPA_MAXBLOCKSIZE, align 4
  %39 = load i32, i32* @UMEM_NOFAIL, align 4
  %40 = call i64 @umem_alloc(i32 %38, i32 %39)
  %41 = inttoptr i64 %40 to i32*
  store i32* %41, i32** @rand_data, align 8
  %42 = call i64 @time(i32* null)
  %43 = trunc i64 %42 to i32
  %44 = call i32 (...) @getpid()
  %45 = mul i32 %43, %44
  %46 = call i32 @srand(i32 %45)
  store i64 0, i64* %6, align 8
  br label %47

47:                                               ; preds = %58, %27
  %48 = load i64, i64* %6, align 8
  %49 = load i32, i32* @SPA_MAXBLOCKSIZE, align 4
  %50 = sext i32 %49 to i64
  %51 = udiv i64 %50, 4
  %52 = icmp ult i64 %48, %51
  br i1 %52, label %53, label %61

53:                                               ; preds = %47
  %54 = call i32 (...) @rand()
  %55 = load i32*, i32** @rand_data, align 8
  %56 = load i64, i64* %6, align 8
  %57 = getelementptr inbounds i32, i32* %55, i64 %56
  store i32 %54, i32* %57, align 4
  br label %58

58:                                               ; preds = %53
  %59 = load i64, i64* %6, align 8
  %60 = add i64 %59, 1
  store i64 %60, i64* %6, align 8
  br label %47

61:                                               ; preds = %47
  %62 = load i32*, i32** @rand_data, align 8
  %63 = load i32, i32* @SPA_MAXBLOCKSIZE, align 4
  %64 = load i32, i32* @PROT_READ, align 4
  %65 = call i32 @mprotect(i32* %62, i32 %63, i32 %64)
  %66 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @rto_opts, i32 0, i32 1), align 8
  %67 = icmp ne i64 %66, 0
  br i1 %67, label %68, label %70

68:                                               ; preds = %61
  %69 = call i32 (...) @run_raidz_benchmark()
  br label %78

70:                                               ; preds = %61
  %71 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @rto_opts, i32 0, i32 0), align 8
  %72 = icmp ne i64 %71, 0
  br i1 %72, label %73, label %75

73:                                               ; preds = %70
  %74 = call i32 (...) @run_sweep()
  store i32 %74, i32* %8, align 4
  br label %77

75:                                               ; preds = %70
  %76 = call i32 @run_test(i32* null)
  store i32 %76, i32* %8, align 4
  br label %77

77:                                               ; preds = %75, %73
  br label %78

78:                                               ; preds = %77, %68
  %79 = load i32*, i32** @rand_data, align 8
  %80 = load i32, i32* @SPA_MAXBLOCKSIZE, align 4
  %81 = call i32 @umem_free(i32* %79, i32 %80)
  %82 = call i32 (...) @kernel_fini()
  %83 = load i32, i32* %8, align 4
  ret i32 %83
}

declare dso_local i32 @sprintf(i32, i8*, i32) #1

declare dso_local i32 @getpid(...) #1

declare dso_local i32 @sigemptyset(i32*) #1

declare dso_local i64 @sigaction(i32, %struct.sigaction*, i32*) #1

declare dso_local i32 @ERR(i8*, i32) #1

declare dso_local i32 @strerror(i32) #1

; Function Attrs: noreturn
declare dso_local i32 @exit(i32) #2

declare dso_local i32 @setvbuf(i32, i32*, i32, i32) #1

declare dso_local i32 @dprintf_setup(i32*, i8**) #1

declare dso_local i32 @process_options(i32, i8**) #1

declare dso_local i32 @kernel_init(i32) #1

declare dso_local i64 @umem_alloc(i32, i32) #1

declare dso_local i32 @srand(i32) #1

declare dso_local i64 @time(i32*) #1

declare dso_local i32 @rand(...) #1

declare dso_local i32 @mprotect(i32*, i32, i32) #1

declare dso_local i32 @run_raidz_benchmark(...) #1

declare dso_local i32 @run_sweep(...) #1

declare dso_local i32 @run_test(i32*) #1

declare dso_local i32 @umem_free(i32*, i32) #1

declare dso_local i32 @kernel_fini(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
