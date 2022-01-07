; ModuleID = '/home/carl/AnghaBench/reactos/modules/rosapps/applications/net/ncftp/ncftp/extr_main.c_main.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rosapps/applications/net/ncftp/ncftp/extr_main.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i8*, i32, i32, i32, i8* }

@.str = private unnamed_addr constant [18 x i8] c"P:u:p:J:rd:g:FVLD\00", align 1
@gStartupUrlParameterGiven = common dso_local global i64 0, align 8
@gOptInd = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [20 x i8] c"P:u:p:j:J:rd:g:FVLD\00", align 1
@gOptArg = common dso_local global i32 0, align 4
@gConn = common dso_local global %struct.TYPE_2__ zeroinitializer, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  %8 = call i32 (...) @PreInit()
  br label %9

9:                                                ; preds = %20, %2
  %10 = load i32, i32* %4, align 4
  %11 = load i8**, i8*** %5, align 8
  %12 = call i32 @Getopt(i32 %10, i8** %11, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0))
  store i32 %12, i32* %6, align 4
  %13 = icmp sgt i32 %12, 0
  br i1 %13, label %14, label %21

14:                                               ; preds = %9
  %15 = load i32, i32* %6, align 4
  switch i32 %15, label %18 [
    i32 80, label %16
    i32 117, label %16
    i32 112, label %16
    i32 74, label %16
    i32 114, label %17
    i32 103, label %17
    i32 100, label %17
    i32 86, label %17
    i32 76, label %17
    i32 68, label %17
    i32 70, label %17
  ]

16:                                               ; preds = %14, %14, %14, %14
  store i64 1, i64* @gStartupUrlParameterGiven, align 8
  br label %20

17:                                               ; preds = %14, %14, %14, %14, %14, %14, %14
  br label %20

18:                                               ; preds = %14
  %19 = call i32 (...) @Usage()
  br label %20

20:                                               ; preds = %18, %17, %16
  br label %9

21:                                               ; preds = %9
  %22 = load i32, i32* @gOptInd, align 4
  %23 = load i32, i32* %4, align 4
  %24 = icmp slt i32 %22, %23
  br i1 %24, label %25, label %33

25:                                               ; preds = %21
  %26 = call i32 @LoadFirewallPrefs(i32 0)
  %27 = load i8**, i8*** %5, align 8
  %28 = load i32, i32* @gOptInd, align 4
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds i8*, i8** %27, i64 %29
  %31 = load i8*, i8** %30, align 8
  %32 = call i32 @SetStartupURL(i8* %31)
  br label %39

33:                                               ; preds = %21
  %34 = load i64, i64* @gStartupUrlParameterGiven, align 8
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %38

36:                                               ; preds = %33
  %37 = call i32 (...) @Usage()
  br label %38

38:                                               ; preds = %36, %33
  br label %39

39:                                               ; preds = %38, %25
  %40 = call i32 (...) @GetoptReset()
  br label %41

41:                                               ; preds = %82, %39
  %42 = load i32, i32* %4, align 4
  %43 = load i8**, i8*** %5, align 8
  %44 = call i32 @Getopt(i32 %42, i8** %43, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i64 0, i64 0))
  store i32 %44, i32* %6, align 4
  %45 = icmp sgt i32 %44, 0
  br i1 %45, label %46, label %83

46:                                               ; preds = %41
  %47 = load i32, i32* %6, align 4
  switch i32 %47, label %80 [
    i32 80, label %48
    i32 117, label %51
    i32 112, label %55
    i32 74, label %59
    i32 106, label %59
    i32 114, label %63
    i32 103, label %64
    i32 100, label %67
    i32 70, label %76
    i32 86, label %79
    i32 76, label %79
    i32 68, label %79
  ]

48:                                               ; preds = %46
  %49 = load i32, i32* @gOptArg, align 4
  %50 = call i8* @atoi(i32 %49)
  store i8* %50, i8** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @gConn, i32 0, i32 5), align 8
  br label %82

51:                                               ; preds = %46
  %52 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @gConn, i32 0, i32 4), align 8
  %53 = load i32, i32* @gOptArg, align 4
  %54 = call i32 @STRNCPY(i32 %52, i32 %53)
  br label %82

55:                                               ; preds = %46
  %56 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @gConn, i32 0, i32 3), align 4
  %57 = load i32, i32* @gOptArg, align 4
  %58 = call i32 @STRNCPY(i32 %56, i32 %57)
  br label %82

59:                                               ; preds = %46, %46
  %60 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @gConn, i32 0, i32 2), align 8
  %61 = load i32, i32* @gOptArg, align 4
  %62 = call i32 @STRNCPY(i32 %60, i32 %61)
  br label %82

63:                                               ; preds = %46
  br label %82

64:                                               ; preds = %46
  %65 = load i32, i32* @gOptArg, align 4
  %66 = call i8* @atoi(i32 %65)
  store i8* %66, i8** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @gConn, i32 0, i32 1), align 8
  br label %82

67:                                               ; preds = %46
  %68 = load i32, i32* @gOptArg, align 4
  %69 = call i8* @atoi(i32 %68)
  %70 = ptrtoint i8* %69 to i32
  store i32 %70, i32* %7, align 4
  %71 = load i32, i32* %7, align 4
  %72 = icmp sge i32 %71, 10
  br i1 %72, label %73, label %75

73:                                               ; preds = %67
  %74 = load i32, i32* %7, align 4
  store i32 %74, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @gConn, i32 0, i32 0), align 8
  br label %75

75:                                               ; preds = %73, %67
  br label %82

76:                                               ; preds = %46
  %77 = call i32 (...) @DumpFirewallPrefsTemplate()
  %78 = call i32 @exit(i32 0) #3
  unreachable

79:                                               ; preds = %46, %46, %46
  br label %82

80:                                               ; preds = %46
  %81 = call i32 (...) @Usage()
  br label %82

82:                                               ; preds = %80, %79, %75, %64, %63, %59, %55, %51, %48
  br label %41

83:                                               ; preds = %41
  %84 = call i32 (...) @PostInit()
  %85 = call i32 (...) @OpenURL()
  %86 = call i32 (...) @CommandShell()
  %87 = call i32 (...) @PostShell()
  %88 = call i32 @exit(i32 0) #3
  unreachable
}

declare dso_local i32 @PreInit(...) #1

declare dso_local i32 @Getopt(i32, i8**, i8*) #1

declare dso_local i32 @Usage(...) #1

declare dso_local i32 @LoadFirewallPrefs(i32) #1

declare dso_local i32 @SetStartupURL(i8*) #1

declare dso_local i32 @GetoptReset(...) #1

declare dso_local i8* @atoi(i32) #1

declare dso_local i32 @STRNCPY(i32, i32) #1

declare dso_local i32 @DumpFirewallPrefsTemplate(...) #1

; Function Attrs: noreturn
declare dso_local i32 @exit(i32) #2

declare dso_local i32 @PostInit(...) #1

declare dso_local i32 @OpenURL(...) #1

declare dso_local i32 @CommandShell(...) #1

declare dso_local i32 @PostShell(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
