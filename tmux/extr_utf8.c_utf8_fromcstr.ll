; ModuleID = '/home/carl/AnghaBench/tmux/extr_utf8.c_utf8_fromcstr.c'
source_filename = "/home/carl/AnghaBench/tmux/extr_utf8.c_utf8_fromcstr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.utf8_data = type { i64, i32 }

@UTF8_MORE = common dso_local global i32 0, align 4
@UTF8_DONE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.utf8_data* @utf8_fromcstr(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.utf8_data*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  store i8* %0, i8** %2, align 8
  store %struct.utf8_data* null, %struct.utf8_data** %3, align 8
  store i64 0, i64* %4, align 8
  br label %6

6:                                                ; preds = %61, %48, %1
  %7 = load i8*, i8** %2, align 8
  %8 = load i8, i8* %7, align 1
  %9 = sext i8 %8 to i32
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %11, label %72

11:                                               ; preds = %6
  %12 = load %struct.utf8_data*, %struct.utf8_data** %3, align 8
  %13 = load i64, i64* %4, align 8
  %14 = add i64 %13, 1
  %15 = call %struct.utf8_data* @xreallocarray(%struct.utf8_data* %12, i64 %14, i32 16)
  store %struct.utf8_data* %15, %struct.utf8_data** %3, align 8
  %16 = load %struct.utf8_data*, %struct.utf8_data** %3, align 8
  %17 = load i64, i64* %4, align 8
  %18 = getelementptr inbounds %struct.utf8_data, %struct.utf8_data* %16, i64 %17
  %19 = load i8*, i8** %2, align 8
  %20 = load i8, i8* %19, align 1
  %21 = call i32 @utf8_open(%struct.utf8_data* %18, i8 signext %20)
  store i32 %21, i32* %5, align 4
  %22 = load i32, i32* @UTF8_MORE, align 4
  %23 = icmp eq i32 %21, %22
  br i1 %23, label %24, label %61

24:                                               ; preds = %11
  br label %25

25:                                               ; preds = %37, %24
  %26 = load i8*, i8** %2, align 8
  %27 = getelementptr inbounds i8, i8* %26, i32 1
  store i8* %27, i8** %2, align 8
  %28 = load i8, i8* %27, align 1
  %29 = sext i8 %28 to i32
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %35

31:                                               ; preds = %25
  %32 = load i32, i32* %5, align 4
  %33 = load i32, i32* @UTF8_MORE, align 4
  %34 = icmp eq i32 %32, %33
  br label %35

35:                                               ; preds = %31, %25
  %36 = phi i1 [ false, %25 ], [ %34, %31 ]
  br i1 %36, label %37, label %44

37:                                               ; preds = %35
  %38 = load %struct.utf8_data*, %struct.utf8_data** %3, align 8
  %39 = load i64, i64* %4, align 8
  %40 = getelementptr inbounds %struct.utf8_data, %struct.utf8_data* %38, i64 %39
  %41 = load i8*, i8** %2, align 8
  %42 = load i8, i8* %41, align 1
  %43 = call i32 @utf8_append(%struct.utf8_data* %40, i8 signext %42)
  store i32 %43, i32* %5, align 4
  br label %25

44:                                               ; preds = %35
  %45 = load i32, i32* %5, align 4
  %46 = load i32, i32* @UTF8_DONE, align 4
  %47 = icmp eq i32 %45, %46
  br i1 %47, label %48, label %51

48:                                               ; preds = %44
  %49 = load i64, i64* %4, align 8
  %50 = add i64 %49, 1
  store i64 %50, i64* %4, align 8
  br label %6

51:                                               ; preds = %44
  %52 = load %struct.utf8_data*, %struct.utf8_data** %3, align 8
  %53 = load i64, i64* %4, align 8
  %54 = getelementptr inbounds %struct.utf8_data, %struct.utf8_data* %52, i64 %53
  %55 = getelementptr inbounds %struct.utf8_data, %struct.utf8_data* %54, i32 0, i32 1
  %56 = load i32, i32* %55, align 8
  %57 = load i8*, i8** %2, align 8
  %58 = sext i32 %56 to i64
  %59 = sub i64 0, %58
  %60 = getelementptr inbounds i8, i8* %57, i64 %59
  store i8* %60, i8** %2, align 8
  br label %61

61:                                               ; preds = %51, %11
  %62 = load %struct.utf8_data*, %struct.utf8_data** %3, align 8
  %63 = load i64, i64* %4, align 8
  %64 = getelementptr inbounds %struct.utf8_data, %struct.utf8_data* %62, i64 %63
  %65 = load i8*, i8** %2, align 8
  %66 = load i8, i8* %65, align 1
  %67 = call i32 @utf8_set(%struct.utf8_data* %64, i8 signext %66)
  %68 = load i64, i64* %4, align 8
  %69 = add i64 %68, 1
  store i64 %69, i64* %4, align 8
  %70 = load i8*, i8** %2, align 8
  %71 = getelementptr inbounds i8, i8* %70, i32 1
  store i8* %71, i8** %2, align 8
  br label %6

72:                                               ; preds = %6
  %73 = load %struct.utf8_data*, %struct.utf8_data** %3, align 8
  %74 = load i64, i64* %4, align 8
  %75 = add i64 %74, 1
  %76 = call %struct.utf8_data* @xreallocarray(%struct.utf8_data* %73, i64 %75, i32 16)
  store %struct.utf8_data* %76, %struct.utf8_data** %3, align 8
  %77 = load %struct.utf8_data*, %struct.utf8_data** %3, align 8
  %78 = load i64, i64* %4, align 8
  %79 = getelementptr inbounds %struct.utf8_data, %struct.utf8_data* %77, i64 %78
  %80 = getelementptr inbounds %struct.utf8_data, %struct.utf8_data* %79, i32 0, i32 0
  store i64 0, i64* %80, align 8
  %81 = load %struct.utf8_data*, %struct.utf8_data** %3, align 8
  ret %struct.utf8_data* %81
}

declare dso_local %struct.utf8_data* @xreallocarray(%struct.utf8_data*, i64, i32) #1

declare dso_local i32 @utf8_open(%struct.utf8_data*, i8 signext) #1

declare dso_local i32 @utf8_append(%struct.utf8_data*, i8 signext) #1

declare dso_local i32 @utf8_set(%struct.utf8_data*, i8 signext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
