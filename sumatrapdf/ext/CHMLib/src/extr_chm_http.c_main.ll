; ModuleID = '/home/carl/AnghaBench/sumatrapdf/ext/CHMLib/src/extr_chm_http.c_main.c'
source_filename = "/home/carl/AnghaBench/sumatrapdf/ext/CHMLib/src/extr_chm_http.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.option = type { i8*, i8, i32, i32 }

@.str = private unnamed_addr constant [5 x i8] c"port\00", align 1
@required_argument = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [5 x i8] c"bind\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"help\00", align 1
@no_argument = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [6 x i8] c"n:b:h\00", align 1
@optarg = common dso_local global i8* null, align 8
@config_port = common dso_local global i32 0, align 4
@stderr = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [22 x i8] c"bad port number (%s)\0A\00", align 1
@config_bind = common dso_local global i8* null, align 8
@optind = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca i32, align 4
  %7 = alloca [4 x %struct.option], align 16
  %8 = alloca i32, align 4
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  store i32 0, i32* %6, align 4
  %9 = getelementptr inbounds [4 x %struct.option], [4 x %struct.option]* %7, i64 0, i64 0
  %10 = getelementptr inbounds %struct.option, %struct.option* %9, i32 0, i32 0
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i8** %10, align 8
  %11 = getelementptr inbounds %struct.option, %struct.option* %9, i32 0, i32 1
  %12 = load i32, i32* @required_argument, align 4
  %13 = trunc i32 %12 to i8
  store i8 %13, i8* %11, align 8
  %14 = getelementptr inbounds %struct.option, %struct.option* %9, i32 0, i32 2
  store i32 0, i32* %14, align 4
  %15 = getelementptr inbounds %struct.option, %struct.option* %9, i32 0, i32 3
  store i32 112, i32* %15, align 8
  %16 = getelementptr inbounds %struct.option, %struct.option* %9, i64 1
  %17 = getelementptr inbounds %struct.option, %struct.option* %16, i32 0, i32 0
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i8** %17, align 8
  %18 = getelementptr inbounds %struct.option, %struct.option* %16, i32 0, i32 1
  %19 = load i32, i32* @required_argument, align 4
  %20 = trunc i32 %19 to i8
  store i8 %20, i8* %18, align 8
  %21 = getelementptr inbounds %struct.option, %struct.option* %16, i32 0, i32 2
  store i32 0, i32* %21, align 4
  %22 = getelementptr inbounds %struct.option, %struct.option* %16, i32 0, i32 3
  store i32 98, i32* %22, align 8
  %23 = getelementptr inbounds %struct.option, %struct.option* %16, i64 1
  %24 = getelementptr inbounds %struct.option, %struct.option* %23, i32 0, i32 0
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0), i8** %24, align 8
  %25 = getelementptr inbounds %struct.option, %struct.option* %23, i32 0, i32 1
  %26 = load i32, i32* @no_argument, align 4
  %27 = trunc i32 %26 to i8
  store i8 %27, i8* %25, align 8
  %28 = getelementptr inbounds %struct.option, %struct.option* %23, i32 0, i32 2
  store i32 0, i32* %28, align 4
  %29 = getelementptr inbounds %struct.option, %struct.option* %23, i32 0, i32 3
  store i32 104, i32* %29, align 8
  %30 = getelementptr inbounds %struct.option, %struct.option* %23, i64 1
  %31 = bitcast %struct.option* %30 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %31, i8 0, i64 24, i1 false)
  %32 = getelementptr inbounds %struct.option, %struct.option* %30, i32 0, i32 1
  store i8 0, i8* %32, align 8
  br label %33

33:                                               ; preds = %2, %65
  %34 = load i32, i32* %4, align 4
  %35 = load i8**, i8*** %5, align 8
  %36 = getelementptr inbounds [4 x %struct.option], [4 x %struct.option]* %7, i64 0, i64 0
  %37 = call i32 @getopt_long(i32 %34, i8** %35, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i64 0, i64 0), %struct.option* %36, i32* %6)
  store i32 %37, i32* %8, align 4
  %38 = load i32, i32* %8, align 4
  %39 = icmp slt i32 %38, 0
  br i1 %39, label %40, label %41

40:                                               ; preds = %33
  br label %66

41:                                               ; preds = %33
  %42 = load i32, i32* %8, align 4
  switch i32 %42, label %65 [
    i32 112, label %43
    i32 98, label %54
    i32 104, label %60
  ]

43:                                               ; preds = %41
  %44 = load i8*, i8** @optarg, align 8
  %45 = call i32 @atoi(i8* %44)
  store i32 %45, i32* @config_port, align 4
  %46 = load i32, i32* @config_port, align 4
  %47 = icmp sle i32 %46, 0
  br i1 %47, label %48, label %53

48:                                               ; preds = %43
  %49 = load i32, i32* @stderr, align 4
  %50 = load i8*, i8** @optarg, align 8
  %51 = call i32 @fprintf(i32 %49, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.4, i64 0, i64 0), i8* %50)
  %52 = call i32 @exit(i32 1) #4
  unreachable

53:                                               ; preds = %43
  br label %65

54:                                               ; preds = %41
  %55 = load i8*, i8** @config_bind, align 8
  %56 = load i8*, i8** @optarg, align 8
  %57 = call i32 @strncpy(i8* %55, i8* %56, i32 65536)
  %58 = load i8*, i8** @config_bind, align 8
  %59 = getelementptr inbounds i8, i8* %58, i64 65535
  store i8 0, i8* %59, align 1
  br label %65

60:                                               ; preds = %41
  %61 = load i8**, i8*** %5, align 8
  %62 = getelementptr inbounds i8*, i8** %61, i64 0
  %63 = load i8*, i8** %62, align 8
  %64 = call i32 @usage(i8* %63)
  br label %65

65:                                               ; preds = %41, %60, %54, %53
  br label %33

66:                                               ; preds = %40
  %67 = load i32, i32* @optind, align 4
  %68 = add nsw i32 %67, 1
  %69 = load i32, i32* %4, align 4
  %70 = icmp ne i32 %68, %69
  br i1 %70, label %71, label %76

71:                                               ; preds = %66
  %72 = load i8**, i8*** %5, align 8
  %73 = getelementptr inbounds i8*, i8** %72, i64 0
  %74 = load i8*, i8** %73, align 8
  %75 = call i32 @usage(i8* %74)
  br label %76

76:                                               ; preds = %71, %66
  %77 = load i8**, i8*** %5, align 8
  %78 = load i32, i32* @optind, align 4
  %79 = sext i32 %78 to i64
  %80 = getelementptr inbounds i8*, i8** %77, i64 %79
  %81 = load i8*, i8** %80, align 8
  %82 = call i32 @chmhttp_server(i8* %81)
  ret i32 0
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @getopt_long(i32, i8**, i8*, %struct.option*, i32*) #2

declare dso_local i32 @atoi(i8*) #2

declare dso_local i32 @fprintf(i32, i8*, i8*) #2

; Function Attrs: noreturn
declare dso_local i32 @exit(i32) #3

declare dso_local i32 @strncpy(i8*, i8*, i32) #2

declare dso_local i32 @usage(i8*) #2

declare dso_local i32 @chmhttp_server(i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
