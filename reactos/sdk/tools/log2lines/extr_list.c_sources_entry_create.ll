; ModuleID = '/home/carl/AnghaBench/reactos/sdk/tools/log2lines/extr_list.c_sources_entry_create.c'
source_filename = "/home/carl/AnghaBench/reactos/sdk/tools/log2lines/extr_list.c_sources_entry_create.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i8*, i8* }

@.str = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.1 = private unnamed_addr constant [20 x i8] c"Alloc entry failed\0A\00", align 1
@.str.2 = private unnamed_addr constant [17 x i8] c"Entry %s exists\0A\00", align 1
@.str.3 = private unnamed_addr constant [20 x i8] c"Inserting entry %s\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.TYPE_6__* @sources_entry_create(i64 %0, i8* %1, i8* %2) #0 {
  %4 = alloca %struct.TYPE_6__*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.TYPE_6__*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  store i64 %0, i64* %5, align 8
  store i8* %1, i8** %6, align 8
  store i8* %2, i8** %7, align 8
  store i8* null, i8** %9, align 8
  %11 = load i8*, i8** %6, align 8
  %12 = icmp ne i8* %11, null
  br i1 %12, label %14, label %13

13:                                               ; preds = %3
  store %struct.TYPE_6__* null, %struct.TYPE_6__** %4, align 8
  br label %91

14:                                               ; preds = %3
  %15 = load i8*, i8** %7, align 8
  %16 = icmp ne i8* %15, null
  br i1 %16, label %18, label %17

17:                                               ; preds = %14
  store i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0), i8** %7, align 8
  br label %18

18:                                               ; preds = %17, %14
  %19 = call i8* @malloc(i32 4)
  %20 = bitcast i8* %19 to %struct.TYPE_6__*
  store %struct.TYPE_6__* %20, %struct.TYPE_6__** %8, align 8
  %21 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %22 = icmp ne %struct.TYPE_6__* %21, null
  br i1 %22, label %24, label %23

23:                                               ; preds = %18
  store %struct.TYPE_6__* null, %struct.TYPE_6__** %4, align 8
  br label %91

24:                                               ; preds = %18
  %25 = load i8*, i8** %6, align 8
  %26 = call i32 @strlen(i8* %25)
  %27 = load i8*, i8** %7, align 8
  %28 = call i32 @strlen(i8* %27)
  %29 = add nsw i32 %26, %28
  store i32 %29, i32* %10, align 4
  %30 = load i32, i32* %10, align 4
  %31 = add nsw i32 %30, 1
  %32 = call i8* @malloc(i32 %31)
  store i8* %32, i8** %9, align 8
  %33 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %34 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %33, i32 0, i32 0
  store i8* %32, i8** %34, align 8
  %35 = load i8*, i8** %9, align 8
  %36 = icmp ne i8* %35, null
  br i1 %36, label %41, label %37

37:                                               ; preds = %24
  %38 = call i32 (i32, i8*, ...) @l2l_dbg(i32 1, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i64 0, i64 0))
  %39 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %40 = call %struct.TYPE_6__* @entry_delete(%struct.TYPE_6__* %39)
  store %struct.TYPE_6__* %40, %struct.TYPE_6__** %4, align 8
  br label %91

41:                                               ; preds = %24
  %42 = load i8*, i8** %9, align 8
  %43 = load i8*, i8** %7, align 8
  %44 = call i32 @strcpy(i8* %42, i8* %43)
  %45 = load i8*, i8** %9, align 8
  %46 = load i8*, i8** %6, align 8
  %47 = call i32 @strcat(i8* %45, i8* %46)
  %48 = load i8*, i8** %9, align 8
  %49 = load i32, i32* %10, align 4
  %50 = sext i32 %49 to i64
  %51 = getelementptr inbounds i8, i8* %48, i64 %50
  %52 = load i8, i8* %51, align 1
  %53 = sext i8 %52 to i32
  %54 = icmp eq i32 %53, 10
  br i1 %54, label %55, label %60

55:                                               ; preds = %41
  %56 = load i8*, i8** %9, align 8
  %57 = load i32, i32* %10, align 4
  %58 = sext i32 %57 to i64
  %59 = getelementptr inbounds i8, i8* %56, i64 %58
  store i8 0, i8* %59, align 1
  br label %60

60:                                               ; preds = %55, %41
  %61 = load i8*, i8** %9, align 8
  %62 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %63 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %62, i32 0, i32 1
  store i8* %61, i8** %63, align 8
  %64 = load i64, i64* %5, align 8
  %65 = icmp ne i64 %64, 0
  br i1 %65, label %66, label %89

66:                                               ; preds = %60
  %67 = load i64, i64* %5, align 8
  %68 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %69 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %68, i32 0, i32 1
  %70 = load i8*, i8** %69, align 8
  %71 = call i64 @entry_lookup(i64 %67, i8* %70)
  %72 = icmp ne i64 %71, 0
  br i1 %72, label %73, label %80

73:                                               ; preds = %66
  %74 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %75 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %74, i32 0, i32 1
  %76 = load i8*, i8** %75, align 8
  %77 = call i32 (i32, i8*, ...) @l2l_dbg(i32 1, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.2, i64 0, i64 0), i8* %76)
  %78 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %79 = call %struct.TYPE_6__* @entry_delete(%struct.TYPE_6__* %78)
  store %struct.TYPE_6__* %79, %struct.TYPE_6__** %8, align 8
  br label %88

80:                                               ; preds = %66
  %81 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %82 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %81, i32 0, i32 1
  %83 = load i8*, i8** %82, align 8
  %84 = call i32 (i32, i8*, ...) @l2l_dbg(i32 1, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.3, i64 0, i64 0), i8* %83)
  %85 = load i64, i64* %5, align 8
  %86 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %87 = call i32 @entry_insert(i64 %85, %struct.TYPE_6__* %86)
  br label %88

88:                                               ; preds = %80, %73
  br label %89

89:                                               ; preds = %88, %60
  %90 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  store %struct.TYPE_6__* %90, %struct.TYPE_6__** %4, align 8
  br label %91

91:                                               ; preds = %89, %37, %23, %13
  %92 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  ret %struct.TYPE_6__* %92
}

declare dso_local i8* @malloc(i32) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i32 @l2l_dbg(i32, i8*, ...) #1

declare dso_local %struct.TYPE_6__* @entry_delete(%struct.TYPE_6__*) #1

declare dso_local i32 @strcpy(i8*, i8*) #1

declare dso_local i32 @strcat(i8*, i8*) #1

declare dso_local i64 @entry_lookup(i64, i8*) #1

declare dso_local i32 @entry_insert(i64, %struct.TYPE_6__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
