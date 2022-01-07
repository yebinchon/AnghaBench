; ModuleID = '/home/carl/AnghaBench/sqlcipher/tool/extr_lemon.c_FindFollowSets.c'
source_filename = "/home/carl/AnghaBench/sqlcipher/tool/extr_lemon.c_FindFollowSets.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lemon = type { i32, %struct.TYPE_3__** }
%struct.TYPE_3__ = type { %struct.config* }
%struct.config = type { i64, i32, %struct.plink*, %struct.config* }
%struct.plink = type { %struct.TYPE_4__*, %struct.plink* }
%struct.TYPE_4__ = type { i8*, i32 }

@INCOMPLETE = common dso_local global i8* null, align 8
@COMPLETE = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @FindFollowSets(%struct.lemon* %0) #0 {
  %2 = alloca %struct.lemon*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.config*, align 8
  %5 = alloca %struct.plink*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
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
  %17 = load %struct.TYPE_3__**, %struct.TYPE_3__*** %16, align 8
  %18 = load i32, i32* %3, align 4
  %19 = sext i32 %18 to i64
  %20 = getelementptr inbounds %struct.TYPE_3__*, %struct.TYPE_3__** %17, i64 %19
  %21 = load %struct.TYPE_3__*, %struct.TYPE_3__** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %21, i32 0, i32 0
  %23 = load %struct.config*, %struct.config** %22, align 8
  store %struct.config* %23, %struct.config** %4, align 8
  br label %24

24:                                               ; preds = %32, %14
  %25 = load %struct.config*, %struct.config** %4, align 8
  %26 = icmp ne %struct.config* %25, null
  br i1 %26, label %27, label %36

27:                                               ; preds = %24
  %28 = load i8*, i8** @INCOMPLETE, align 8
  %29 = ptrtoint i8* %28 to i64
  %30 = load %struct.config*, %struct.config** %4, align 8
  %31 = getelementptr inbounds %struct.config, %struct.config* %30, i32 0, i32 0
  store i64 %29, i64* %31, align 8
  br label %32

32:                                               ; preds = %27
  %33 = load %struct.config*, %struct.config** %4, align 8
  %34 = getelementptr inbounds %struct.config, %struct.config* %33, i32 0, i32 3
  %35 = load %struct.config*, %struct.config** %34, align 8
  store %struct.config* %35, %struct.config** %4, align 8
  br label %24

36:                                               ; preds = %24
  br label %37

37:                                               ; preds = %36
  %38 = load i32, i32* %3, align 4
  %39 = add nsw i32 %38, 1
  store i32 %39, i32* %3, align 4
  br label %8

40:                                               ; preds = %8
  br label %41

41:                                               ; preds = %111, %40
  store i32 0, i32* %6, align 4
  store i32 0, i32* %3, align 4
  br label %42

42:                                               ; preds = %107, %41
  %43 = load i32, i32* %3, align 4
  %44 = load %struct.lemon*, %struct.lemon** %2, align 8
  %45 = getelementptr inbounds %struct.lemon, %struct.lemon* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 8
  %47 = icmp slt i32 %43, %46
  br i1 %47, label %48, label %110

48:                                               ; preds = %42
  %49 = load %struct.lemon*, %struct.lemon** %2, align 8
  %50 = getelementptr inbounds %struct.lemon, %struct.lemon* %49, i32 0, i32 1
  %51 = load %struct.TYPE_3__**, %struct.TYPE_3__*** %50, align 8
  %52 = load i32, i32* %3, align 4
  %53 = sext i32 %52 to i64
  %54 = getelementptr inbounds %struct.TYPE_3__*, %struct.TYPE_3__** %51, i64 %53
  %55 = load %struct.TYPE_3__*, %struct.TYPE_3__** %54, align 8
  %56 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %55, i32 0, i32 0
  %57 = load %struct.config*, %struct.config** %56, align 8
  store %struct.config* %57, %struct.config** %4, align 8
  br label %58

58:                                               ; preds = %102, %48
  %59 = load %struct.config*, %struct.config** %4, align 8
  %60 = icmp ne %struct.config* %59, null
  br i1 %60, label %61, label %106

61:                                               ; preds = %58
  %62 = load %struct.config*, %struct.config** %4, align 8
  %63 = getelementptr inbounds %struct.config, %struct.config* %62, i32 0, i32 0
  %64 = load i64, i64* %63, align 8
  %65 = load i64, i64* @COMPLETE, align 8
  %66 = icmp eq i64 %64, %65
  br i1 %66, label %67, label %68

67:                                               ; preds = %61
  br label %102

68:                                               ; preds = %61
  %69 = load %struct.config*, %struct.config** %4, align 8
  %70 = getelementptr inbounds %struct.config, %struct.config* %69, i32 0, i32 2
  %71 = load %struct.plink*, %struct.plink** %70, align 8
  store %struct.plink* %71, %struct.plink** %5, align 8
  br label %72

72:                                               ; preds = %94, %68
  %73 = load %struct.plink*, %struct.plink** %5, align 8
  %74 = icmp ne %struct.plink* %73, null
  br i1 %74, label %75, label %98

75:                                               ; preds = %72
  %76 = load %struct.plink*, %struct.plink** %5, align 8
  %77 = getelementptr inbounds %struct.plink, %struct.plink* %76, i32 0, i32 0
  %78 = load %struct.TYPE_4__*, %struct.TYPE_4__** %77, align 8
  %79 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %78, i32 0, i32 1
  %80 = load i32, i32* %79, align 8
  %81 = load %struct.config*, %struct.config** %4, align 8
  %82 = getelementptr inbounds %struct.config, %struct.config* %81, i32 0, i32 1
  %83 = load i32, i32* %82, align 8
  %84 = call i32 @SetUnion(i32 %80, i32 %83)
  store i32 %84, i32* %7, align 4
  %85 = load i32, i32* %7, align 4
  %86 = icmp ne i32 %85, 0
  br i1 %86, label %87, label %93

87:                                               ; preds = %75
  %88 = load i8*, i8** @INCOMPLETE, align 8
  %89 = load %struct.plink*, %struct.plink** %5, align 8
  %90 = getelementptr inbounds %struct.plink, %struct.plink* %89, i32 0, i32 0
  %91 = load %struct.TYPE_4__*, %struct.TYPE_4__** %90, align 8
  %92 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %91, i32 0, i32 0
  store i8* %88, i8** %92, align 8
  store i32 1, i32* %6, align 4
  br label %93

93:                                               ; preds = %87, %75
  br label %94

94:                                               ; preds = %93
  %95 = load %struct.plink*, %struct.plink** %5, align 8
  %96 = getelementptr inbounds %struct.plink, %struct.plink* %95, i32 0, i32 1
  %97 = load %struct.plink*, %struct.plink** %96, align 8
  store %struct.plink* %97, %struct.plink** %5, align 8
  br label %72

98:                                               ; preds = %72
  %99 = load i64, i64* @COMPLETE, align 8
  %100 = load %struct.config*, %struct.config** %4, align 8
  %101 = getelementptr inbounds %struct.config, %struct.config* %100, i32 0, i32 0
  store i64 %99, i64* %101, align 8
  br label %102

102:                                              ; preds = %98, %67
  %103 = load %struct.config*, %struct.config** %4, align 8
  %104 = getelementptr inbounds %struct.config, %struct.config* %103, i32 0, i32 3
  %105 = load %struct.config*, %struct.config** %104, align 8
  store %struct.config* %105, %struct.config** %4, align 8
  br label %58

106:                                              ; preds = %58
  br label %107

107:                                              ; preds = %106
  %108 = load i32, i32* %3, align 4
  %109 = add nsw i32 %108, 1
  store i32 %109, i32* %3, align 4
  br label %42

110:                                              ; preds = %42
  br label %111

111:                                              ; preds = %110
  %112 = load i32, i32* %6, align 4
  %113 = icmp ne i32 %112, 0
  br i1 %113, label %41, label %114

114:                                              ; preds = %111
  ret void
}

declare dso_local i32 @SetUnion(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
