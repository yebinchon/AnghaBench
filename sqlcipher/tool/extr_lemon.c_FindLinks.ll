; ModuleID = '/home/carl/AnghaBench/sqlcipher/tool/extr_lemon.c_FindLinks.c'
source_filename = "/home/carl/AnghaBench/sqlcipher/tool/extr_lemon.c_FindLinks.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lemon = type { i32, %struct.state** }
%struct.state = type { %struct.config* }
%struct.config = type { i32, %struct.plink*, %struct.config*, %struct.state* }
%struct.plink = type { %struct.config*, %struct.plink* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @FindLinks(%struct.lemon* %0) #0 {
  %2 = alloca %struct.lemon*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.config*, align 8
  %5 = alloca %struct.config*, align 8
  %6 = alloca %struct.state*, align 8
  %7 = alloca %struct.plink*, align 8
  store %struct.lemon* %0, %struct.lemon** %2, align 8
  store i32 0, i32* %3, align 4
  br label %8

8:                                                ; preds = %37, %1
  %9 = load i32, i32* %3, align 4
  %10 = load %struct.lemon*, %struct.lemon** %2, align 8
  %11 = getelementptr inbounds %struct.lemon, %struct.lemon* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 8
  %13 = icmp slt i32 %9, %12
  br i1 %13, label %14, label %40

14:                                               ; preds = %8
  %15 = load %struct.lemon*, %struct.lemon** %2, align 8
  %16 = getelementptr inbounds %struct.lemon, %struct.lemon* %15, i32 0, i32 1
  %17 = load %struct.state**, %struct.state*** %16, align 8
  %18 = load i32, i32* %3, align 4
  %19 = sext i32 %18 to i64
  %20 = getelementptr inbounds %struct.state*, %struct.state** %17, i64 %19
  %21 = load %struct.state*, %struct.state** %20, align 8
  store %struct.state* %21, %struct.state** %6, align 8
  %22 = load %struct.state*, %struct.state** %6, align 8
  %23 = getelementptr inbounds %struct.state, %struct.state* %22, i32 0, i32 0
  %24 = load %struct.config*, %struct.config** %23, align 8
  store %struct.config* %24, %struct.config** %4, align 8
  br label %25

25:                                               ; preds = %32, %14
  %26 = load %struct.config*, %struct.config** %4, align 8
  %27 = icmp ne %struct.config* %26, null
  br i1 %27, label %28, label %36

28:                                               ; preds = %25
  %29 = load %struct.state*, %struct.state** %6, align 8
  %30 = load %struct.config*, %struct.config** %4, align 8
  %31 = getelementptr inbounds %struct.config, %struct.config* %30, i32 0, i32 3
  store %struct.state* %29, %struct.state** %31, align 8
  br label %32

32:                                               ; preds = %28
  %33 = load %struct.config*, %struct.config** %4, align 8
  %34 = getelementptr inbounds %struct.config, %struct.config* %33, i32 0, i32 2
  %35 = load %struct.config*, %struct.config** %34, align 8
  store %struct.config* %35, %struct.config** %4, align 8
  br label %25

36:                                               ; preds = %25
  br label %37

37:                                               ; preds = %36
  %38 = load i32, i32* %3, align 4
  %39 = add nsw i32 %38, 1
  store i32 %39, i32* %3, align 4
  br label %8

40:                                               ; preds = %8
  store i32 0, i32* %3, align 4
  br label %41

41:                                               ; preds = %86, %40
  %42 = load i32, i32* %3, align 4
  %43 = load %struct.lemon*, %struct.lemon** %2, align 8
  %44 = getelementptr inbounds %struct.lemon, %struct.lemon* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 8
  %46 = icmp slt i32 %42, %45
  br i1 %46, label %47, label %89

47:                                               ; preds = %41
  %48 = load %struct.lemon*, %struct.lemon** %2, align 8
  %49 = getelementptr inbounds %struct.lemon, %struct.lemon* %48, i32 0, i32 1
  %50 = load %struct.state**, %struct.state*** %49, align 8
  %51 = load i32, i32* %3, align 4
  %52 = sext i32 %51 to i64
  %53 = getelementptr inbounds %struct.state*, %struct.state** %50, i64 %52
  %54 = load %struct.state*, %struct.state** %53, align 8
  store %struct.state* %54, %struct.state** %6, align 8
  %55 = load %struct.state*, %struct.state** %6, align 8
  %56 = getelementptr inbounds %struct.state, %struct.state* %55, i32 0, i32 0
  %57 = load %struct.config*, %struct.config** %56, align 8
  store %struct.config* %57, %struct.config** %4, align 8
  br label %58

58:                                               ; preds = %81, %47
  %59 = load %struct.config*, %struct.config** %4, align 8
  %60 = icmp ne %struct.config* %59, null
  br i1 %60, label %61, label %85

61:                                               ; preds = %58
  %62 = load %struct.config*, %struct.config** %4, align 8
  %63 = getelementptr inbounds %struct.config, %struct.config* %62, i32 0, i32 1
  %64 = load %struct.plink*, %struct.plink** %63, align 8
  store %struct.plink* %64, %struct.plink** %7, align 8
  br label %65

65:                                               ; preds = %76, %61
  %66 = load %struct.plink*, %struct.plink** %7, align 8
  %67 = icmp ne %struct.plink* %66, null
  br i1 %67, label %68, label %80

68:                                               ; preds = %65
  %69 = load %struct.plink*, %struct.plink** %7, align 8
  %70 = getelementptr inbounds %struct.plink, %struct.plink* %69, i32 0, i32 0
  %71 = load %struct.config*, %struct.config** %70, align 8
  store %struct.config* %71, %struct.config** %5, align 8
  %72 = load %struct.config*, %struct.config** %5, align 8
  %73 = getelementptr inbounds %struct.config, %struct.config* %72, i32 0, i32 0
  %74 = load %struct.config*, %struct.config** %4, align 8
  %75 = call i32 @Plink_add(i32* %73, %struct.config* %74)
  br label %76

76:                                               ; preds = %68
  %77 = load %struct.plink*, %struct.plink** %7, align 8
  %78 = getelementptr inbounds %struct.plink, %struct.plink* %77, i32 0, i32 1
  %79 = load %struct.plink*, %struct.plink** %78, align 8
  store %struct.plink* %79, %struct.plink** %7, align 8
  br label %65

80:                                               ; preds = %65
  br label %81

81:                                               ; preds = %80
  %82 = load %struct.config*, %struct.config** %4, align 8
  %83 = getelementptr inbounds %struct.config, %struct.config* %82, i32 0, i32 2
  %84 = load %struct.config*, %struct.config** %83, align 8
  store %struct.config* %84, %struct.config** %4, align 8
  br label %58

85:                                               ; preds = %58
  br label %86

86:                                               ; preds = %85
  %87 = load i32, i32* %3, align 4
  %88 = add nsw i32 %87, 1
  store i32 %88, i32* %3, align 4
  br label %41

89:                                               ; preds = %41
  ret void
}

declare dso_local i32 @Plink_add(i32*, %struct.config*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
