; ModuleID = '/home/carl/AnghaBench/reactos/sdk/lib/3rdparty/adns/client/extr_adh-query.c_print_dnsfail.c'
source_filename = "/home/carl/AnghaBench/reactos/sdk/lib/3rdparty/adns/client/extr_adh-query.c_print_dnsfail.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.query_node = type { i32 }
%struct.TYPE_5__ = type { i32 }

@ov_format = common dso_local global i64 0, align 8
@fmt_inline = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [10 x i8] c"; failed \00", align 1
@stdout = common dso_local global i32 0, align 4
@EOF = common dso_local global i32 0, align 4
@fmt_simple = common dso_local global i64 0, align 8
@adns_s_nxdomain = common dso_local global i64 0, align 8
@stderr = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [19 x i8] c"%s does not exist\0A\00", align 1
@adns_s_nodata = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [21 x i8] c"%s has no %s record\0A\00", align 1
@.str.3 = private unnamed_addr constant [39 x i8] c"Error during DNS %s lookup for %s: %s\0A\00", align 1
@.str.4 = private unnamed_addr constant [30 x i8] c"write error message to stderr\00", align 1
@errno = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i64, %struct.query_node*, %struct.TYPE_5__*)* @print_dnsfail to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @print_dnsfail(i64 %0, %struct.query_node* %1, %struct.TYPE_5__* %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca %struct.query_node*, align 8
  %6 = alloca %struct.TYPE_5__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  store i64 %0, i64* %4, align 8
  store %struct.query_node* %1, %struct.query_node** %5, align 8
  store %struct.TYPE_5__* %2, %struct.TYPE_5__** %6, align 8
  %11 = load i64, i64* @ov_format, align 8
  %12 = load i64, i64* @fmt_inline, align 8
  %13 = icmp eq i64 %11, %12
  br i1 %13, label %14, label %26

14:                                               ; preds = %3
  %15 = load i32, i32* @stdout, align 4
  %16 = call i32 @fputs(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i32 %15)
  %17 = load i32, i32* @EOF, align 4
  %18 = icmp eq i32 %16, %17
  br i1 %18, label %19, label %21

19:                                               ; preds = %14
  %20 = call i32 (...) @outerr()
  br label %21

21:                                               ; preds = %19, %14
  %22 = load i64, i64* %4, align 8
  %23 = load %struct.query_node*, %struct.query_node** %5, align 8
  %24 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %25 = call i32 @print_status(i64 %22, %struct.query_node* %23, %struct.TYPE_5__* %24)
  br label %74

26:                                               ; preds = %3
  %27 = load i64, i64* @ov_format, align 8
  %28 = load i64, i64* @fmt_simple, align 8
  %29 = icmp eq i64 %27, %28
  %30 = zext i1 %29 to i32
  %31 = call i32 @assert(i32 %30)
  %32 = load i64, i64* %4, align 8
  %33 = load i64, i64* @adns_s_nxdomain, align 8
  %34 = icmp eq i64 %32, %33
  br i1 %34, label %35, label %41

35:                                               ; preds = %26
  %36 = load i32, i32* @stderr, align 4
  %37 = load %struct.query_node*, %struct.query_node** %5, align 8
  %38 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %39 = call i8* @owner_show(%struct.query_node* %37, %struct.TYPE_5__* %38)
  %40 = call i32 (i32, i8*, i8*, ...) @fprintf(i32 %36, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.1, i64 0, i64 0), i8* %39)
  store i32 %40, i32* %7, align 4
  br label %67

41:                                               ; preds = %26
  %42 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %43 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = call i64 @adns_rr_info(i32 %44, i8** %8, i32 0, i32 0, i32 0, i32 0)
  store i64 %45, i64* %10, align 8
  %46 = load i64, i64* %4, align 8
  %47 = load i64, i64* @adns_s_nodata, align 8
  %48 = icmp eq i64 %46, %47
  br i1 %48, label %49, label %56

49:                                               ; preds = %41
  %50 = load i32, i32* @stderr, align 4
  %51 = load %struct.query_node*, %struct.query_node** %5, align 8
  %52 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %53 = call i8* @owner_show(%struct.query_node* %51, %struct.TYPE_5__* %52)
  %54 = load i8*, i8** %8, align 8
  %55 = call i32 (i32, i8*, i8*, ...) @fprintf(i32 %50, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.2, i64 0, i64 0), i8* %53, i8* %54)
  store i32 %55, i32* %7, align 4
  br label %66

56:                                               ; preds = %41
  %57 = load i64, i64* %4, align 8
  %58 = call i8* @adns_strerror(i64 %57)
  store i8* %58, i8** %9, align 8
  %59 = load i32, i32* @stderr, align 4
  %60 = load i8*, i8** %8, align 8
  %61 = load %struct.query_node*, %struct.query_node** %5, align 8
  %62 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %63 = call i8* @owner_show(%struct.query_node* %61, %struct.TYPE_5__* %62)
  %64 = load i8*, i8** %9, align 8
  %65 = call i32 (i32, i8*, i8*, ...) @fprintf(i32 %59, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.3, i64 0, i64 0), i8* %60, i8* %63, i8* %64)
  store i32 %65, i32* %7, align 4
  br label %66

66:                                               ; preds = %56, %49
  br label %67

67:                                               ; preds = %66, %35
  %68 = load i32, i32* %7, align 4
  %69 = load i32, i32* @EOF, align 4
  %70 = icmp eq i32 %68, %69
  br i1 %70, label %71, label %74

71:                                               ; preds = %67
  %72 = load i32, i32* @errno, align 4
  %73 = call i32 @sysfail(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.4, i64 0, i64 0), i32 %72)
  br label %74

74:                                               ; preds = %21, %71, %67
  ret void
}

declare dso_local i32 @fputs(i8*, i32) #1

declare dso_local i32 @outerr(...) #1

declare dso_local i32 @print_status(i64, %struct.query_node*, %struct.TYPE_5__*) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @fprintf(i32, i8*, i8*, ...) #1

declare dso_local i8* @owner_show(%struct.query_node*, %struct.TYPE_5__*) #1

declare dso_local i64 @adns_rr_info(i32, i8**, i32, i32, i32, i32) #1

declare dso_local i8* @adns_strerror(i64) #1

declare dso_local i32 @sysfail(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
