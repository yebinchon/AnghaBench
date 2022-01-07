; ModuleID = '/home/carl/AnghaBench/reactos/modules/rosapps/applications/net/ncftp/ncftp/extr_cmds.c_LookupCmd.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rosapps/applications/net/ncftp/ncftp/extr_cmds.c_LookupCmd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hostent = type { i8**, i8*, i8** }
%struct.in_addr = type { i32 }

@gUnusedArg = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [2 x i8] c"v\00", align 1
@gOptInd = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.2 = private unnamed_addr constant [42 x i8] c"Unable to get information about site %s.\0A\00", align 1
@.str.3 = private unnamed_addr constant [10 x i8] c"%-40s %s\0A\00", align 1
@.str.4 = private unnamed_addr constant [5 x i8] c"%s:\0A\00", align 1
@.str.5 = private unnamed_addr constant [18 x i8] c"    Name:     %s\0A\00", align 1
@.str.6 = private unnamed_addr constant [18 x i8] c"    Alias:    %s\0A\00", align 1
@.str.7 = private unnamed_addr constant [18 x i8] c"    Address:  %s\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @LookupCmd(i32 %0, i8** %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i8**, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.hostent*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i8**, align 8
  %14 = alloca %struct.in_addr, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca [16 x i8], align 16
  store i32 %0, i32* %5, align 4
  store i8** %1, i8*** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %18 = load i32, i32* @gUnusedArg, align 4
  %19 = call i32 @ARGSUSED(i32 %18)
  store i32 1, i32* %15, align 4
  %20 = call i32 (...) @GetoptReset()
  br label %21

21:                                               ; preds = %33, %4
  %22 = load i32, i32* %5, align 4
  %23 = load i8**, i8*** %6, align 8
  %24 = call i32 @Getopt(i32 %22, i8** %23, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  store i32 %24, i32* %16, align 4
  %25 = icmp sge i32 %24, 0
  br i1 %25, label %26, label %34

26:                                               ; preds = %21
  %27 = load i32, i32* %16, align 4
  %28 = icmp eq i32 %27, 118
  br i1 %28, label %29, label %30

29:                                               ; preds = %26
  store i32 0, i32* %15, align 4
  br label %33

30:                                               ; preds = %26
  %31 = load i32, i32* %7, align 4
  %32 = call i32 @PrintCmdUsage(i32 %31)
  br label %124

33:                                               ; preds = %29
  br label %21

34:                                               ; preds = %21
  %35 = load i32, i32* @gOptInd, align 4
  store i32 %35, i32* %9, align 4
  br label %36

36:                                               ; preds = %121, %34
  %37 = load i32, i32* %9, align 4
  %38 = load i32, i32* %5, align 4
  %39 = icmp slt i32 %37, %38
  br i1 %39, label %40, label %124

40:                                               ; preds = %36
  %41 = load i8**, i8*** %6, align 8
  %42 = load i32, i32* %9, align 4
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds i8*, i8** %41, i64 %43
  %45 = load i8*, i8** %44, align 8
  store i8* %45, i8** %12, align 8
  %46 = call %struct.hostent* @GetHostEntry(i8* %45, %struct.in_addr* %14)
  store %struct.hostent* %46, %struct.hostent** %11, align 8
  %47 = load i32, i32* %9, align 4
  %48 = load i32, i32* @gOptInd, align 4
  %49 = icmp sgt i32 %47, %48
  br i1 %49, label %50, label %55

50:                                               ; preds = %40
  %51 = load i32, i32* %15, align 4
  %52 = icmp eq i32 %51, 0
  br i1 %52, label %53, label %55

53:                                               ; preds = %50
  %54 = call i32 (i32, i8*, ...) @Trace(i32 -1, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  br label %55

55:                                               ; preds = %53, %50, %40
  %56 = load %struct.hostent*, %struct.hostent** %11, align 8
  %57 = icmp eq %struct.hostent* %56, null
  br i1 %57, label %58, label %61

58:                                               ; preds = %55
  %59 = load i8*, i8** %12, align 8
  %60 = call i32 (i32, i8*, ...) @Trace(i32 -1, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.2, i64 0, i64 0), i8* %59)
  br label %120

61:                                               ; preds = %55
  %62 = load i32, i32* %15, align 4
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %64, label %75

64:                                               ; preds = %61
  %65 = getelementptr inbounds [16 x i8], [16 x i8]* %17, i64 0, i64 0
  %66 = load %struct.hostent*, %struct.hostent** %11, align 8
  %67 = getelementptr inbounds %struct.hostent, %struct.hostent* %66, i32 0, i32 0
  %68 = load i8**, i8*** %67, align 8
  %69 = call i32 @MyInetAddr(i8* %65, i32 16, i8** %68, i32 0)
  %70 = load %struct.hostent*, %struct.hostent** %11, align 8
  %71 = getelementptr inbounds %struct.hostent, %struct.hostent* %70, i32 0, i32 1
  %72 = load i8*, i8** %71, align 8
  %73 = getelementptr inbounds [16 x i8], [16 x i8]* %17, i64 0, i64 0
  %74 = call i32 (i32, i8*, ...) @Trace(i32 -1, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.3, i64 0, i64 0), i8* %72, i8* %73)
  br label %119

75:                                               ; preds = %61
  %76 = load i8*, i8** %12, align 8
  %77 = call i32 (i32, i8*, ...) @Trace(i32 -1, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i64 0, i64 0), i8* %76)
  %78 = load %struct.hostent*, %struct.hostent** %11, align 8
  %79 = getelementptr inbounds %struct.hostent, %struct.hostent* %78, i32 0, i32 1
  %80 = load i8*, i8** %79, align 8
  %81 = call i32 (i32, i8*, ...) @Trace(i32 -1, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.5, i64 0, i64 0), i8* %80)
  %82 = load %struct.hostent*, %struct.hostent** %11, align 8
  %83 = getelementptr inbounds %struct.hostent, %struct.hostent* %82, i32 0, i32 2
  %84 = load i8**, i8*** %83, align 8
  store i8** %84, i8*** %13, align 8
  br label %85

85:                                               ; preds = %93, %75
  %86 = load i8**, i8*** %13, align 8
  %87 = load i8*, i8** %86, align 8
  %88 = icmp ne i8* %87, null
  br i1 %88, label %89, label %96

89:                                               ; preds = %85
  %90 = load i8**, i8*** %13, align 8
  %91 = load i8*, i8** %90, align 8
  %92 = call i32 (i32, i8*, ...) @Trace(i32 -1, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.6, i64 0, i64 0), i8* %91)
  br label %93

93:                                               ; preds = %89
  %94 = load i8**, i8*** %13, align 8
  %95 = getelementptr inbounds i8*, i8** %94, i32 1
  store i8** %95, i8*** %13, align 8
  br label %85

96:                                               ; preds = %85
  store i32 0, i32* %10, align 4
  %97 = load %struct.hostent*, %struct.hostent** %11, align 8
  %98 = getelementptr inbounds %struct.hostent, %struct.hostent* %97, i32 0, i32 0
  %99 = load i8**, i8*** %98, align 8
  store i8** %99, i8*** %13, align 8
  br label %100

100:                                              ; preds = %113, %96
  %101 = load i8**, i8*** %13, align 8
  %102 = load i8*, i8** %101, align 8
  %103 = icmp ne i8* %102, null
  br i1 %103, label %104, label %118

104:                                              ; preds = %100
  %105 = getelementptr inbounds [16 x i8], [16 x i8]* %17, i64 0, i64 0
  %106 = load %struct.hostent*, %struct.hostent** %11, align 8
  %107 = getelementptr inbounds %struct.hostent, %struct.hostent* %106, i32 0, i32 0
  %108 = load i8**, i8*** %107, align 8
  %109 = load i32, i32* %10, align 4
  %110 = call i32 @MyInetAddr(i8* %105, i32 16, i8** %108, i32 %109)
  %111 = getelementptr inbounds [16 x i8], [16 x i8]* %17, i64 0, i64 0
  %112 = call i32 (i32, i8*, ...) @Trace(i32 -1, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.7, i64 0, i64 0), i8* %111)
  br label %113

113:                                              ; preds = %104
  %114 = load i8**, i8*** %13, align 8
  %115 = getelementptr inbounds i8*, i8** %114, i32 1
  store i8** %115, i8*** %13, align 8
  %116 = load i32, i32* %10, align 4
  %117 = add nsw i32 %116, 1
  store i32 %117, i32* %10, align 4
  br label %100

118:                                              ; preds = %100
  br label %119

119:                                              ; preds = %118, %64
  br label %120

120:                                              ; preds = %119, %58
  br label %121

121:                                              ; preds = %120
  %122 = load i32, i32* %9, align 4
  %123 = add nsw i32 %122, 1
  store i32 %123, i32* %9, align 4
  br label %36

124:                                              ; preds = %30, %36
  ret void
}

declare dso_local i32 @ARGSUSED(i32) #1

declare dso_local i32 @GetoptReset(...) #1

declare dso_local i32 @Getopt(i32, i8**, i8*) #1

declare dso_local i32 @PrintCmdUsage(i32) #1

declare dso_local %struct.hostent* @GetHostEntry(i8*, %struct.in_addr*) #1

declare dso_local i32 @Trace(i32, i8*, ...) #1

declare dso_local i32 @MyInetAddr(i8*, i32, i8**, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
