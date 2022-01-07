; ModuleID = '/home/carl/AnghaBench/reactos/sdk/tools/rsym/extr_raddr2line.c_process_data.c'
source_filename = "/home/carl/AnghaBench/reactos/sdk/tools/rsym/extr_raddr2line.c_process_data.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { i64, i64 }
%struct.TYPE_10__ = type { i32 }
%struct.TYPE_9__ = type { i64 }
%struct.TYPE_8__ = type { i32 }

@IMAGE_DOS_MAGIC = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [31 x i8] c"Input file is not a PE image.\0A\00", align 1
@stderr = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [44 x i8] c"Couldn't find rossym section in executable\0A\00", align 1
@.str.2 = private unnamed_addr constant [6 x i8] c"??:0\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @process_data(i8* %0, i64 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.TYPE_11__*, align 8
  %7 = alloca %struct.TYPE_10__*, align 8
  %8 = alloca %struct.TYPE_9__*, align 8
  %9 = alloca %struct.TYPE_8__*, align 8
  %10 = alloca %struct.TYPE_8__*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
  store i64 %1, i64* %5, align 8
  %13 = load i8*, i8** %4, align 8
  %14 = bitcast i8* %13 to %struct.TYPE_11__*
  store %struct.TYPE_11__* %14, %struct.TYPE_11__** %6, align 8
  %15 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %16 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = load i64, i64* @IMAGE_DOS_MAGIC, align 8
  %19 = icmp ne i64 %17, %18
  br i1 %19, label %25, label %20

20:                                               ; preds = %2
  %21 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %22 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %21, i32 0, i32 1
  %23 = load i64, i64* %22, align 8
  %24 = icmp eq i64 %23, 0
  br i1 %24, label %25, label %27

25:                                               ; preds = %20, %2
  %26 = call i32 @perror(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0))
  store i32 1, i32* %3, align 4
  br label %75

27:                                               ; preds = %20
  %28 = load i8*, i8** %4, align 8
  %29 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %30 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %29, i32 0, i32 1
  %31 = load i64, i64* %30, align 8
  %32 = getelementptr inbounds i8, i8* %28, i64 %31
  %33 = getelementptr inbounds i8, i8* %32, i64 4
  %34 = bitcast i8* %33 to %struct.TYPE_10__*
  store %struct.TYPE_10__* %34, %struct.TYPE_10__** %7, align 8
  %35 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %36 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %35, i64 1
  %37 = bitcast %struct.TYPE_10__* %36 to %struct.TYPE_9__*
  store %struct.TYPE_9__* %37, %struct.TYPE_9__** %8, align 8
  %38 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %39 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  store i64 %40, i64* %11, align 8
  %41 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %42 = bitcast %struct.TYPE_9__* %41 to i8*
  %43 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %44 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = sext i32 %45 to i64
  %47 = getelementptr inbounds i8, i8* %42, i64 %46
  %48 = bitcast i8* %47 to %struct.TYPE_8__*
  store %struct.TYPE_8__* %48, %struct.TYPE_8__** %9, align 8
  %49 = load i64, i64* %11, align 8
  %50 = load i64, i64* %5, align 8
  %51 = call i64 @fixup_offset(i64 %49, i64 %50)
  store i64 %51, i64* %5, align 8
  %52 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %53 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %54 = call %struct.TYPE_8__* @find_rossym_section(%struct.TYPE_10__* %52, %struct.TYPE_8__* %53)
  store %struct.TYPE_8__* %54, %struct.TYPE_8__** %10, align 8
  %55 = load %struct.TYPE_8__*, %struct.TYPE_8__** %10, align 8
  %56 = icmp ne %struct.TYPE_8__* %55, null
  br i1 %56, label %60, label %57

57:                                               ; preds = %27
  %58 = load i32, i32* @stderr, align 4
  %59 = call i32 @fprintf(i32 %58, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.1, i64 0, i64 0))
  store i32 1, i32* %3, align 4
  br label %75

60:                                               ; preds = %27
  %61 = load i8*, i8** %4, align 8
  %62 = load %struct.TYPE_8__*, %struct.TYPE_8__** %10, align 8
  %63 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 4
  %65 = sext i32 %64 to i64
  %66 = getelementptr inbounds i8, i8* %61, i64 %65
  %67 = load i64, i64* %5, align 8
  %68 = call i32 @find_and_print_offset(i8* %66, i64 %67)
  store i32 %68, i32* %12, align 4
  %69 = load i32, i32* %12, align 4
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %71, label %73

71:                                               ; preds = %60
  %72 = call i32 @printf(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0))
  br label %73

73:                                               ; preds = %71, %60
  %74 = load i32, i32* %12, align 4
  store i32 %74, i32* %3, align 4
  br label %75

75:                                               ; preds = %73, %57, %25
  %76 = load i32, i32* %3, align 4
  ret i32 %76
}

declare dso_local i32 @perror(i8*) #1

declare dso_local i64 @fixup_offset(i64, i64) #1

declare dso_local %struct.TYPE_8__* @find_rossym_section(%struct.TYPE_10__*, %struct.TYPE_8__*) #1

declare dso_local i32 @fprintf(i32, i8*) #1

declare dso_local i32 @find_and_print_offset(i8*, i64) #1

declare dso_local i32 @printf(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
