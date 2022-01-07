; ModuleID = '/home/carl/AnghaBench/reactos/modules/rosapps/applications/net/ncftp/libncftp/extr_rcmd.c_SendCommand.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rosapps/applications/net/ncftp/libncftp/extr_rcmd.c_SendCommand.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i64, i64, i8*, i32, i32, i64, i32 }

@kClosedFileDescriptor = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [5 x i8] c"PASS\00", align 1
@.str.1 = private unnamed_addr constant [10 x i8] c"anonymous\00", align 1
@kFirewallNotInUse = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [9 x i8] c"Cmd: %s\0A\00", align 1
@.str.3 = private unnamed_addr constant [14 x i8] c"PASS xxxxxxxx\00", align 1
@.str.4 = private unnamed_addr constant [3 x i8] c"\0D\0A\00", align 1
@kErrSocketWriteFailed = common dso_local global i32 0, align 4
@kDoPerror = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [36 x i8] c"Could not write to control stream.\0A\00", align 1
@kNoErr = common dso_local global i32 0, align 4
@kErrNotConnected = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_5__*, i8*, i32)* @SendCommand to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @SendCommand(%struct.TYPE_5__* %0, i8* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_5__*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32 %2, i32* %7, align 4
  %10 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %11 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = load i64, i64* @kClosedFileDescriptor, align 8
  %14 = icmp ne i64 %12, %13
  br i1 %14, label %15, label %77

15:                                               ; preds = %3
  %16 = load i8*, i8** %8, align 8
  %17 = load i8*, i8** %6, align 8
  %18 = load i32, i32* %7, align 4
  %19 = call i32 @vsprintf(i8* %16, i8* %17, i32 %18)
  %20 = load i8*, i8** %8, align 8
  %21 = call i32 @SZ(i32 4)
  %22 = call i64 @strncmp(i8* %20, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i32 %21)
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %36, label %24

24:                                               ; preds = %15
  %25 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %26 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %25, i32 0, i32 6
  %27 = load i32, i32* %26, align 8
  %28 = call i64 @strcmp(i32 %27, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0))
  %29 = icmp eq i64 %28, 0
  br i1 %29, label %30, label %40

30:                                               ; preds = %24
  %31 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %32 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %31, i32 0, i32 1
  %33 = load i64, i64* %32, align 8
  %34 = load i64, i64* @kFirewallNotInUse, align 8
  %35 = icmp eq i64 %33, %34
  br i1 %35, label %36, label %40

36:                                               ; preds = %30, %15
  %37 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %38 = load i8*, i8** %8, align 8
  %39 = call i32 @PrintF(%struct.TYPE_5__* %37, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0), i8* %38)
  br label %43

40:                                               ; preds = %30, %24
  %41 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %42 = call i32 @PrintF(%struct.TYPE_5__* %41, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.3, i64 0, i64 0))
  br label %43

43:                                               ; preds = %40, %36
  %44 = load i8*, i8** %8, align 8
  %45 = call i32 @STRNCAT(i8* %44, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.4, i64 0, i64 0))
  %46 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %47 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %46, i32 0, i32 2
  %48 = load i8*, i8** %47, align 8
  %49 = getelementptr inbounds i8, i8* %48, i64 0
  store i8 0, i8* %49, align 1
  %50 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %51 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %50, i32 0, i32 3
  store i32 -1, i32* %51, align 8
  %52 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %53 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %52, i32 0, i32 0
  %54 = load i64, i64* %53, align 8
  %55 = load i8*, i8** %8, align 8
  %56 = load i8*, i8** %8, align 8
  %57 = call i32 @strlen(i8* %56)
  %58 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %59 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %58, i32 0, i32 5
  %60 = load i64, i64* %59, align 8
  %61 = trunc i64 %60 to i32
  %62 = call i32 @SWrite(i64 %54, i8* %55, i32 %57, i32 %61, i32 0)
  store i32 %62, i32* %9, align 4
  %63 = load i32, i32* %9, align 4
  %64 = icmp slt i32 %63, 0
  br i1 %64, label %65, label %75

65:                                               ; preds = %43
  %66 = load i32, i32* @kErrSocketWriteFailed, align 4
  %67 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %68 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %67, i32 0, i32 4
  store i32 %66, i32* %68, align 4
  %69 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %70 = load i32, i32* @kDoPerror, align 4
  %71 = call i32 @Error(%struct.TYPE_5__* %69, i32 %70, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.5, i64 0, i64 0))
  %72 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %73 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %72, i32 0, i32 4
  %74 = load i32, i32* %73, align 4
  store i32 %74, i32* %4, align 4
  br label %79

75:                                               ; preds = %43
  %76 = load i32, i32* @kNoErr, align 4
  store i32 %76, i32* %4, align 4
  br label %79

77:                                               ; preds = %3
  %78 = load i32, i32* @kErrNotConnected, align 4
  store i32 %78, i32* %4, align 4
  br label %79

79:                                               ; preds = %77, %75, %65
  %80 = load i32, i32* %4, align 4
  ret i32 %80
}

declare dso_local i32 @vsprintf(i8*, i8*, i32) #1

declare dso_local i64 @strncmp(i8*, i8*, i32) #1

declare dso_local i32 @SZ(i32) #1

declare dso_local i64 @strcmp(i32, i8*) #1

declare dso_local i32 @PrintF(%struct.TYPE_5__*, i8*, i8*) #1

declare dso_local i32 @STRNCAT(i8*, i8*) #1

declare dso_local i32 @SWrite(i64, i8*, i32, i32, i32) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i32 @Error(%struct.TYPE_5__*, i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
