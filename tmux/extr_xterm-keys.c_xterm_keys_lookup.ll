; ModuleID = '/home/carl/AnghaBench/tmux/extr_xterm-keys.c_xterm_keys_lookup.c'
source_filename = "/home/carl/AnghaBench/tmux/extr_xterm-keys.c_xterm_keys_lookup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xterm_keys_entry = type { i32, i32 }

@KEYC_SHIFT = common dso_local global i32 0, align 4
@KEYC_ESCAPE = common dso_local global i32 0, align 4
@KEYC_CTRL = common dso_local global i32 0, align 4
@KEYC_XTERM = common dso_local global i32 0, align 4
@KEYC_MASK_KEY = common dso_local global i32 0, align 4
@xterm_keys_table = common dso_local global %struct.xterm_keys_entry* null, align 8
@.str = private unnamed_addr constant [2 x i8] c"_\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @xterm_keys_lookup(i32 %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.xterm_keys_entry*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  store i32 %0, i32* %3, align 4
  store i32 1, i32* %6, align 4
  %8 = load i32, i32* %3, align 4
  %9 = load i32, i32* @KEYC_SHIFT, align 4
  %10 = and i32 %8, %9
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %12, label %15

12:                                               ; preds = %1
  %13 = load i32, i32* %6, align 4
  %14 = add nsw i32 %13, 1
  store i32 %14, i32* %6, align 4
  br label %15

15:                                               ; preds = %12, %1
  %16 = load i32, i32* %3, align 4
  %17 = load i32, i32* @KEYC_ESCAPE, align 4
  %18 = and i32 %16, %17
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %23

20:                                               ; preds = %15
  %21 = load i32, i32* %6, align 4
  %22 = add nsw i32 %21, 2
  store i32 %22, i32* %6, align 4
  br label %23

23:                                               ; preds = %20, %15
  %24 = load i32, i32* %3, align 4
  %25 = load i32, i32* @KEYC_CTRL, align 4
  %26 = and i32 %24, %25
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %31

28:                                               ; preds = %23
  %29 = load i32, i32* %6, align 4
  %30 = add nsw i32 %29, 4
  store i32 %30, i32* %6, align 4
  br label %31

31:                                               ; preds = %28, %23
  %32 = load i32, i32* %6, align 4
  %33 = icmp eq i32 %32, 1
  br i1 %33, label %34, label %35

34:                                               ; preds = %31
  store i8* null, i8** %2, align 8
  br label %86

35:                                               ; preds = %31
  %36 = load i32, i32* %3, align 4
  %37 = load i32, i32* @KEYC_ESCAPE, align 4
  %38 = load i32, i32* @KEYC_XTERM, align 4
  %39 = or i32 %37, %38
  %40 = and i32 %36, %39
  %41 = load i32, i32* @KEYC_ESCAPE, align 4
  %42 = icmp eq i32 %40, %41
  br i1 %42, label %43, label %44

43:                                               ; preds = %35
  store i8* null, i8** %2, align 8
  br label %86

44:                                               ; preds = %35
  %45 = load i32, i32* @KEYC_MASK_KEY, align 4
  %46 = load i32, i32* %3, align 4
  %47 = and i32 %46, %45
  store i32 %47, i32* %3, align 4
  store i64 0, i64* %5, align 8
  br label %48

48:                                               ; preds = %64, %44
  %49 = load i64, i64* %5, align 8
  %50 = load %struct.xterm_keys_entry*, %struct.xterm_keys_entry** @xterm_keys_table, align 8
  %51 = call i64 @nitems(%struct.xterm_keys_entry* %50)
  %52 = icmp ult i64 %49, %51
  br i1 %52, label %53, label %67

53:                                               ; preds = %48
  %54 = load %struct.xterm_keys_entry*, %struct.xterm_keys_entry** @xterm_keys_table, align 8
  %55 = load i64, i64* %5, align 8
  %56 = getelementptr inbounds %struct.xterm_keys_entry, %struct.xterm_keys_entry* %54, i64 %55
  store %struct.xterm_keys_entry* %56, %struct.xterm_keys_entry** %4, align 8
  %57 = load i32, i32* %3, align 4
  %58 = load %struct.xterm_keys_entry*, %struct.xterm_keys_entry** %4, align 8
  %59 = getelementptr inbounds %struct.xterm_keys_entry, %struct.xterm_keys_entry* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 4
  %61 = icmp eq i32 %57, %60
  br i1 %61, label %62, label %63

62:                                               ; preds = %53
  br label %67

63:                                               ; preds = %53
  br label %64

64:                                               ; preds = %63
  %65 = load i64, i64* %5, align 8
  %66 = add i64 %65, 1
  store i64 %66, i64* %5, align 8
  br label %48

67:                                               ; preds = %62, %48
  %68 = load i64, i64* %5, align 8
  %69 = load %struct.xterm_keys_entry*, %struct.xterm_keys_entry** @xterm_keys_table, align 8
  %70 = call i64 @nitems(%struct.xterm_keys_entry* %69)
  %71 = icmp eq i64 %68, %70
  br i1 %71, label %72, label %73

72:                                               ; preds = %67
  store i8* null, i8** %2, align 8
  br label %86

73:                                               ; preds = %67
  %74 = load %struct.xterm_keys_entry*, %struct.xterm_keys_entry** %4, align 8
  %75 = getelementptr inbounds %struct.xterm_keys_entry, %struct.xterm_keys_entry* %74, i32 0, i32 1
  %76 = load i32, i32* %75, align 4
  %77 = call i8* @xstrdup(i32 %76)
  store i8* %77, i8** %7, align 8
  %78 = load i32, i32* %6, align 4
  %79 = add nsw i32 48, %78
  %80 = trunc i32 %79 to i8
  %81 = load i8*, i8** %7, align 8
  %82 = load i8*, i8** %7, align 8
  %83 = call i64 @strcspn(i8* %82, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  %84 = getelementptr inbounds i8, i8* %81, i64 %83
  store i8 %80, i8* %84, align 1
  %85 = load i8*, i8** %7, align 8
  store i8* %85, i8** %2, align 8
  br label %86

86:                                               ; preds = %73, %72, %43, %34
  %87 = load i8*, i8** %2, align 8
  ret i8* %87
}

declare dso_local i64 @nitems(%struct.xterm_keys_entry*) #1

declare dso_local i8* @xstrdup(i32) #1

declare dso_local i64 @strcspn(i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
