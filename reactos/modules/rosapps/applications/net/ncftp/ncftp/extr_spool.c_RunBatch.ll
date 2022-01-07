; ModuleID = '/home/carl/AnghaBench/reactos/modules/rosapps/applications/net/ncftp/ncftp/extr_spool.c_RunBatch.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rosapps/applications/net/ncftp/ncftp/extr_spool.c_RunBatch.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i64 }

@.str = private unnamed_addr constant [5 x i8] c"pipe\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"fork\00", align 1
@.str.3 = private unnamed_addr constant [11 x i8] c"ncftpbatch\00", align 1
@.str.4 = private unnamed_addr constant [3 x i8] c"-d\00", align 1
@.str.5 = private unnamed_addr constant [3 x i8] c"-|\00", align 1
@stderr = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [41 x i8] c"Could not run %s.  Is it in your $PATH?\0A\00", align 1
@BINDIR = common dso_local global i32 0, align 4
@SW_SHOWNORMAL = common dso_local global i32 0, align 4
@gOurInstallationPath = common dso_local global i8* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @RunBatch(i32 %0, %struct.TYPE_4__* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_4__*, align 8
  %5 = alloca [2 x i32], align 4
  %6 = alloca [32 x i8], align 16
  %7 = alloca [8 x i8*], align 16
  %8 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store %struct.TYPE_4__* %1, %struct.TYPE_4__** %4, align 8
  store i32 0, i32* %8, align 4
  %9 = load i32, i32* %3, align 4
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %11, label %80

11:                                               ; preds = %2
  %12 = getelementptr inbounds [2 x i32], [2 x i32]* %5, i64 0, i64 0
  %13 = call i64 @pipe(i32* %12)
  %14 = icmp slt i64 %13, 0
  br i1 %14, label %15, label %17

15:                                               ; preds = %11
  %16 = call i32 @perror(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0))
  br label %17

17:                                               ; preds = %15, %11
  %18 = getelementptr inbounds [32 x i8], [32 x i8]* %6, i64 0, i64 0
  %19 = getelementptr inbounds [2 x i32], [2 x i32]* %5, i64 0, i64 0
  %20 = load i32, i32* %19, align 4
  %21 = call i32 @sprintf(i8* %18, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i32 %20)
  %22 = call i32 (...) @fork()
  store i32 %22, i32* %8, align 4
  %23 = load i32, i32* %8, align 4
  %24 = icmp slt i32 %23, 0
  br i1 %24, label %25, label %33

25:                                               ; preds = %17
  %26 = getelementptr inbounds [2 x i32], [2 x i32]* %5, i64 0, i64 0
  %27 = load i32, i32* %26, align 4
  %28 = call i32 @close(i32 %27)
  %29 = getelementptr inbounds [2 x i32], [2 x i32]* %5, i64 0, i64 1
  %30 = load i32, i32* %29, align 4
  %31 = call i32 @close(i32 %30)
  %32 = call i32 @perror(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0))
  br label %59

33:                                               ; preds = %17
  %34 = load i32, i32* %8, align 4
  %35 = icmp eq i32 %34, 0
  br i1 %35, label %36, label %58

36:                                               ; preds = %33
  %37 = getelementptr inbounds [2 x i32], [2 x i32]* %5, i64 0, i64 1
  %38 = load i32, i32* %37, align 4
  %39 = call i32 @close(i32 %38)
  %40 = getelementptr inbounds [8 x i8*], [8 x i8*]* %7, i64 0, i64 0
  store i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.3, i64 0, i64 0), i8** %40, align 16
  %41 = getelementptr inbounds [8 x i8*], [8 x i8*]* %7, i64 0, i64 1
  store i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.4, i64 0, i64 0), i8** %41, align 8
  %42 = getelementptr inbounds [8 x i8*], [8 x i8*]* %7, i64 0, i64 2
  store i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.5, i64 0, i64 0), i8** %42, align 16
  %43 = getelementptr inbounds [32 x i8], [32 x i8]* %6, i64 0, i64 0
  %44 = getelementptr inbounds [8 x i8*], [8 x i8*]* %7, i64 0, i64 3
  store i8* %43, i8** %44, align 8
  %45 = getelementptr inbounds [8 x i8*], [8 x i8*]* %7, i64 0, i64 4
  store i8* null, i8** %45, align 16
  %46 = getelementptr inbounds [8 x i8*], [8 x i8*]* %7, i64 0, i64 0
  %47 = load i8*, i8** %46, align 16
  %48 = getelementptr inbounds [8 x i8*], [8 x i8*]* %7, i64 0, i64 0
  %49 = call i32 @execvp(i8* %47, i8** %48)
  %50 = load i32, i32* @stderr, align 4
  %51 = getelementptr inbounds [8 x i8*], [8 x i8*]* %7, i64 0, i64 0
  %52 = load i8*, i8** %51, align 16
  %53 = call i32 (i32, i8*, i8*, ...) @fprintf(i32 %50, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.6, i64 0, i64 0), i8* %52)
  %54 = getelementptr inbounds [8 x i8*], [8 x i8*]* %7, i64 0, i64 0
  %55 = load i8*, i8** %54, align 16
  %56 = call i32 @perror(i8* %55)
  %57 = call i32 @exit(i32 1) #3
  unreachable

58:                                               ; preds = %33
  br label %59

59:                                               ; preds = %58, %25
  %60 = getelementptr inbounds [2 x i32], [2 x i32]* %5, i64 0, i64 0
  %61 = load i32, i32* %60, align 4
  %62 = call i32 @close(i32 %61)
  %63 = getelementptr inbounds [2 x i32], [2 x i32]* %5, i64 0, i64 1
  %64 = load i32, i32* %63, align 4
  %65 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %66 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %65, i32 0, i32 0
  %67 = load i64, i64* %66, align 8
  %68 = inttoptr i64 %67 to i8*
  %69 = call i32 @PWrite(i32 %64, i8* %68, i32 4)
  %70 = getelementptr inbounds [2 x i32], [2 x i32]* %5, i64 0, i64 1
  %71 = load i32, i32* %70, align 4
  %72 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %73 = bitcast %struct.TYPE_4__* %72 to i8*
  %74 = call i32 @PWrite(i32 %71, i8* %73, i32 4)
  %75 = getelementptr inbounds [2 x i32], [2 x i32]* %5, i64 0, i64 1
  %76 = load i32, i32* %75, align 4
  %77 = call i32 @close(i32 %76)
  %78 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %79 = call i32 @CloseControlConnection(%struct.TYPE_4__* %78)
  br label %107

80:                                               ; preds = %2
  %81 = call i32 (...) @fork()
  store i32 %81, i32* %8, align 4
  %82 = load i32, i32* %8, align 4
  %83 = icmp slt i32 %82, 0
  br i1 %83, label %84, label %86

84:                                               ; preds = %80
  %85 = call i32 @perror(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0))
  br label %106

86:                                               ; preds = %80
  %87 = load i32, i32* %8, align 4
  %88 = icmp eq i32 %87, 0
  br i1 %88, label %89, label %105

89:                                               ; preds = %86
  %90 = getelementptr inbounds [8 x i8*], [8 x i8*]* %7, i64 0, i64 0
  store i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.3, i64 0, i64 0), i8** %90, align 16
  %91 = getelementptr inbounds [8 x i8*], [8 x i8*]* %7, i64 0, i64 1
  store i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.4, i64 0, i64 0), i8** %91, align 8
  %92 = getelementptr inbounds [8 x i8*], [8 x i8*]* %7, i64 0, i64 2
  store i8* null, i8** %92, align 16
  %93 = getelementptr inbounds [8 x i8*], [8 x i8*]* %7, i64 0, i64 0
  %94 = load i8*, i8** %93, align 16
  %95 = getelementptr inbounds [8 x i8*], [8 x i8*]* %7, i64 0, i64 0
  %96 = call i32 @execvp(i8* %94, i8** %95)
  %97 = load i32, i32* @stderr, align 4
  %98 = getelementptr inbounds [8 x i8*], [8 x i8*]* %7, i64 0, i64 0
  %99 = load i8*, i8** %98, align 16
  %100 = call i32 (i32, i8*, i8*, ...) @fprintf(i32 %97, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.6, i64 0, i64 0), i8* %99)
  %101 = getelementptr inbounds [8 x i8*], [8 x i8*]* %7, i64 0, i64 0
  %102 = load i8*, i8** %101, align 16
  %103 = call i32 @perror(i8* %102)
  %104 = call i32 @exit(i32 1) #3
  unreachable

105:                                              ; preds = %86
  br label %106

106:                                              ; preds = %105, %84
  br label %107

107:                                              ; preds = %106, %59
  %108 = load i32, i32* %8, align 4
  %109 = icmp sgt i32 %108, 1
  br i1 %109, label %110, label %112

110:                                              ; preds = %107
  %111 = call i32 @wait(i32* null)
  br label %112

112:                                              ; preds = %110, %107
  ret void
}

declare dso_local i64 @pipe(i32*) #1

declare dso_local i32 @perror(i8*) #1

declare dso_local i32 @sprintf(i8*, i8*, i32) #1

declare dso_local i32 @fork(...) #1

declare dso_local i32 @close(i32) #1

declare dso_local i32 @execvp(i8*, i8**) #1

declare dso_local i32 @fprintf(i32, i8*, i8*, ...) #1

; Function Attrs: noreturn
declare dso_local i32 @exit(i32) #2

declare dso_local i32 @PWrite(i32, i8*, i32) #1

declare dso_local i32 @CloseControlConnection(%struct.TYPE_4__*) #1

declare dso_local i32 @wait(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
