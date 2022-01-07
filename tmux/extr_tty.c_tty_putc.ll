; ModuleID = '/home/carl/AnghaBench/tmux/extr_tty.c_tty_putc.c'
source_filename = "/home/carl/AnghaBench/tmux/extr_tty.c_tty_putc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tty = type { i32, i32, i32, i32, i64, %struct.TYPE_4__*, %struct.TYPE_3__ }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { i32 }

@TERM_EARLYWRAP = common dso_local global i32 0, align 4
@GRID_ATTR_CHARSET = common dso_local global i32 0, align 4
@TTYC_CUP = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @tty_putc(%struct.tty* %0, i32 %1) #0 {
  %3 = alloca %struct.tty*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  store %struct.tty* %0, %struct.tty** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load %struct.tty*, %struct.tty** %3, align 8
  %7 = getelementptr inbounds %struct.tty, %struct.tty* %6, i32 0, i32 5
  %8 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %9 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = load i32, i32* @TERM_EARLYWRAP, align 4
  %12 = and i32 %10, %11
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %39

14:                                               ; preds = %2
  %15 = load i32, i32* %4, align 4
  %16 = icmp sge i32 %15, 32
  br i1 %16, label %17, label %39

17:                                               ; preds = %14
  %18 = load i32, i32* %4, align 4
  %19 = icmp ne i32 %18, 127
  br i1 %19, label %20, label %39

20:                                               ; preds = %17
  %21 = load %struct.tty*, %struct.tty** %3, align 8
  %22 = getelementptr inbounds %struct.tty, %struct.tty* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = load %struct.tty*, %struct.tty** %3, align 8
  %25 = getelementptr inbounds %struct.tty, %struct.tty* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 4
  %27 = sub nsw i32 %26, 1
  %28 = icmp eq i32 %23, %27
  br i1 %28, label %29, label %39

29:                                               ; preds = %20
  %30 = load %struct.tty*, %struct.tty** %3, align 8
  %31 = getelementptr inbounds %struct.tty, %struct.tty* %30, i32 0, i32 2
  %32 = load i32, i32* %31, align 8
  %33 = add nsw i32 %32, 1
  %34 = load %struct.tty*, %struct.tty** %3, align 8
  %35 = getelementptr inbounds %struct.tty, %struct.tty* %34, i32 0, i32 3
  %36 = load i32, i32* %35, align 4
  %37 = icmp sge i32 %33, %36
  br i1 %37, label %38, label %39

38:                                               ; preds = %29
  br label %123

39:                                               ; preds = %29, %20, %17, %14, %2
  %40 = load %struct.tty*, %struct.tty** %3, align 8
  %41 = getelementptr inbounds %struct.tty, %struct.tty* %40, i32 0, i32 6
  %42 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 8
  %44 = load i32, i32* @GRID_ATTR_CHARSET, align 4
  %45 = and i32 %43, %44
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %63

47:                                               ; preds = %39
  %48 = load %struct.tty*, %struct.tty** %3, align 8
  %49 = load i32, i32* %4, align 4
  %50 = call i8* @tty_acs_get(%struct.tty* %48, i32 %49)
  store i8* %50, i8** %5, align 8
  %51 = load i8*, i8** %5, align 8
  %52 = icmp ne i8* %51, null
  br i1 %52, label %53, label %59

53:                                               ; preds = %47
  %54 = load %struct.tty*, %struct.tty** %3, align 8
  %55 = load i8*, i8** %5, align 8
  %56 = load i8*, i8** %5, align 8
  %57 = call i32 @strlen(i8* %56)
  %58 = call i32 (%struct.tty*, ...) @tty_add(%struct.tty* %54, i8* %55, i32 %57)
  br label %62

59:                                               ; preds = %47
  %60 = load %struct.tty*, %struct.tty** %3, align 8
  %61 = call i32 (%struct.tty*, ...) @tty_add(%struct.tty* %60, i32* %4, i32 1)
  br label %62

62:                                               ; preds = %59, %53
  br label %66

63:                                               ; preds = %39
  %64 = load %struct.tty*, %struct.tty** %3, align 8
  %65 = call i32 (%struct.tty*, ...) @tty_add(%struct.tty* %64, i32* %4, i32 1)
  br label %66

66:                                               ; preds = %63, %62
  %67 = load i32, i32* %4, align 4
  %68 = icmp sge i32 %67, 32
  br i1 %68, label %69, label %123

69:                                               ; preds = %66
  %70 = load i32, i32* %4, align 4
  %71 = icmp ne i32 %70, 127
  br i1 %71, label %72, label %123

72:                                               ; preds = %69
  %73 = load %struct.tty*, %struct.tty** %3, align 8
  %74 = getelementptr inbounds %struct.tty, %struct.tty* %73, i32 0, i32 2
  %75 = load i32, i32* %74, align 8
  %76 = load %struct.tty*, %struct.tty** %3, align 8
  %77 = getelementptr inbounds %struct.tty, %struct.tty* %76, i32 0, i32 3
  %78 = load i32, i32* %77, align 4
  %79 = icmp sge i32 %75, %78
  br i1 %79, label %80, label %117

80:                                               ; preds = %72
  %81 = load %struct.tty*, %struct.tty** %3, align 8
  %82 = getelementptr inbounds %struct.tty, %struct.tty* %81, i32 0, i32 2
  store i32 1, i32* %82, align 8
  %83 = load %struct.tty*, %struct.tty** %3, align 8
  %84 = getelementptr inbounds %struct.tty, %struct.tty* %83, i32 0, i32 0
  %85 = load i32, i32* %84, align 8
  %86 = sext i32 %85 to i64
  %87 = load %struct.tty*, %struct.tty** %3, align 8
  %88 = getelementptr inbounds %struct.tty, %struct.tty* %87, i32 0, i32 4
  %89 = load i64, i64* %88, align 8
  %90 = icmp ne i64 %86, %89
  br i1 %90, label %91, label %96

91:                                               ; preds = %80
  %92 = load %struct.tty*, %struct.tty** %3, align 8
  %93 = getelementptr inbounds %struct.tty, %struct.tty* %92, i32 0, i32 0
  %94 = load i32, i32* %93, align 8
  %95 = add nsw i32 %94, 1
  store i32 %95, i32* %93, align 8
  br label %96

96:                                               ; preds = %91, %80
  %97 = load %struct.tty*, %struct.tty** %3, align 8
  %98 = getelementptr inbounds %struct.tty, %struct.tty* %97, i32 0, i32 5
  %99 = load %struct.TYPE_4__*, %struct.TYPE_4__** %98, align 8
  %100 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %99, i32 0, i32 0
  %101 = load i32, i32* %100, align 4
  %102 = load i32, i32* @TERM_EARLYWRAP, align 4
  %103 = and i32 %101, %102
  %104 = icmp ne i32 %103, 0
  br i1 %104, label %105, label %116

105:                                              ; preds = %96
  %106 = load %struct.tty*, %struct.tty** %3, align 8
  %107 = load i32, i32* @TTYC_CUP, align 4
  %108 = load %struct.tty*, %struct.tty** %3, align 8
  %109 = getelementptr inbounds %struct.tty, %struct.tty* %108, i32 0, i32 0
  %110 = load i32, i32* %109, align 8
  %111 = sext i32 %110 to i64
  %112 = load %struct.tty*, %struct.tty** %3, align 8
  %113 = getelementptr inbounds %struct.tty, %struct.tty* %112, i32 0, i32 2
  %114 = load i32, i32* %113, align 8
  %115 = call i32 @tty_putcode2(%struct.tty* %106, i32 %107, i64 %111, i32 %114)
  br label %116

116:                                              ; preds = %105, %96
  br label %122

117:                                              ; preds = %72
  %118 = load %struct.tty*, %struct.tty** %3, align 8
  %119 = getelementptr inbounds %struct.tty, %struct.tty* %118, i32 0, i32 2
  %120 = load i32, i32* %119, align 8
  %121 = add nsw i32 %120, 1
  store i32 %121, i32* %119, align 8
  br label %122

122:                                              ; preds = %117, %116
  br label %123

123:                                              ; preds = %38, %122, %69, %66
  ret void
}

declare dso_local i8* @tty_acs_get(%struct.tty*, i32) #1

declare dso_local i32 @tty_add(%struct.tty*, ...) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i32 @tty_putcode2(%struct.tty*, i32, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
