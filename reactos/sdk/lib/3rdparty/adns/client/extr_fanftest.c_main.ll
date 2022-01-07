; ModuleID = '/home/carl/AnghaBench/reactos/sdk/lib/3rdparty/adns/client/extr_fanftest.c_main.c'
source_filename = "/home/carl/AnghaBench/reactos/sdk/lib/3rdparty/adns/client/extr_fanftest.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i64, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i8** }

@progname = common dso_local global i8* null, align 8
@stderr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [20 x i8] c"usage: %s <domain>\0A\00", align 1
@adns_if_debug = common dso_local global i32 0, align 4
@errno = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [10 x i8] c"adns_init\00", align 1
@adns_r_ptr = common dso_local global i32 0, align 4
@adns_qf_quoteok_cname = common dso_local global i32 0, align 4
@adns_qf_cname_loose = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [12 x i8] c"adns_submit\00", align 1
@.str.3 = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1
@adns_s_ok = common dso_local global i64 0, align 8
@.str.4 = private unnamed_addr constant [6 x i8] c"dunno\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_5__*, align 8
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  %9 = load i8**, i8*** %5, align 8
  %10 = load i8*, i8** %9, align 8
  %11 = call i8* @strrchr(i8* %10, i8 signext 47)
  store i8* %11, i8** @progname, align 8
  %12 = load i8*, i8** @progname, align 8
  %13 = icmp ne i8* %12, null
  br i1 %13, label %14, label %17

14:                                               ; preds = %2
  %15 = load i8*, i8** @progname, align 8
  %16 = getelementptr inbounds i8, i8* %15, i32 1
  store i8* %16, i8** @progname, align 8
  br label %20

17:                                               ; preds = %2
  %18 = load i8**, i8*** %5, align 8
  %19 = load i8*, i8** %18, align 8
  store i8* %19, i8** @progname, align 8
  br label %20

20:                                               ; preds = %17, %14
  %21 = load i32, i32* %4, align 4
  %22 = icmp ne i32 %21, 2
  br i1 %22, label %23, label %28

23:                                               ; preds = %20
  %24 = load i32, i32* @stderr, align 4
  %25 = load i8*, i8** @progname, align 8
  %26 = call i32 @fprintf(i32 %24, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i8* %25)
  %27 = call i32 @exit(i32 1) #3
  unreachable

28:                                               ; preds = %20
  %29 = load i32, i32* @adns_if_debug, align 4
  %30 = call i64 @adns_init(i32* %6, i32 %29, i32 0)
  store i64 %30, i64* @errno, align 8
  %31 = load i64, i64* @errno, align 8
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %35

33:                                               ; preds = %28
  %34 = call i32 @aargh(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0))
  br label %35

35:                                               ; preds = %33, %28
  %36 = load i32, i32* %6, align 4
  %37 = load i8**, i8*** %5, align 8
  %38 = getelementptr inbounds i8*, i8** %37, i64 1
  %39 = load i8*, i8** %38, align 8
  %40 = load i32, i32* @adns_r_ptr, align 4
  %41 = load i32, i32* @adns_qf_quoteok_cname, align 4
  %42 = load i32, i32* @adns_qf_cname_loose, align 4
  %43 = or i32 %41, %42
  %44 = call i64 @adns_submit(i32 %36, i8* %39, i32 %40, i32 %43, i32* null, i32* %7)
  store i64 %44, i64* @errno, align 8
  %45 = load i64, i64* @errno, align 8
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %49

47:                                               ; preds = %35
  %48 = call i32 @aargh(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.2, i64 0, i64 0))
  br label %49

49:                                               ; preds = %47, %35
  %50 = load i32, i32* %6, align 4
  %51 = call i64 @adns_wait(i32 %50, i32* %7, %struct.TYPE_5__** %8, i32* null)
  store i64 %51, i64* @errno, align 8
  %52 = load i64, i64* @errno, align 8
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %54, label %56

54:                                               ; preds = %49
  %55 = call i32 @aargh(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0))
  br label %56

56:                                               ; preds = %54, %49
  %57 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %58 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %57, i32 0, i32 0
  %59 = load i64, i64* %58, align 8
  %60 = load i64, i64* @adns_s_ok, align 8
  %61 = icmp eq i64 %59, %60
  br i1 %61, label %62, label %68

62:                                               ; preds = %56
  %63 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %64 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %63, i32 0, i32 1
  %65 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %64, i32 0, i32 0
  %66 = load i8**, i8*** %65, align 8
  %67 = load i8*, i8** %66, align 8
  br label %69

68:                                               ; preds = %56
  br label %69

69:                                               ; preds = %68, %62
  %70 = phi i8* [ %67, %62 ], [ getelementptr inbounds ([6 x i8], [6 x i8]* @.str.4, i64 0, i64 0), %68 ]
  %71 = call i32 @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0), i8* %70)
  %72 = load i32, i32* %6, align 4
  %73 = call i32 @adns_finish(i32 %72)
  ret i32 0
}

declare dso_local i8* @strrchr(i8*, i8 signext) #1

declare dso_local i32 @fprintf(i32, i8*, i8*) #1

; Function Attrs: noreturn
declare dso_local i32 @exit(i32) #2

declare dso_local i64 @adns_init(i32*, i32, i32) #1

declare dso_local i32 @aargh(i8*) #1

declare dso_local i64 @adns_submit(i32, i8*, i32, i32, i32*, i32*) #1

declare dso_local i64 @adns_wait(i32, i32*, %struct.TYPE_5__**, i32*) #1

declare dso_local i32 @printf(i8*, i8*) #1

declare dso_local i32 @adns_finish(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
