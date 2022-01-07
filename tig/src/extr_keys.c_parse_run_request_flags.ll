; ModuleID = '/home/carl/AnghaBench/tig/src/extr_keys.c_parse_run_request_flags.c'
source_filename = "/home/carl/AnghaBench/tig/src/extr_keys.c_parse_run_request_flags.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.run_request_flags = type { i32, i32, i32, i32, i32, i32 }

@.str = private unnamed_addr constant [13 x i8] c"No arguments\00", align 1
@COMMAND_FLAGS = common dso_local global i8* null, align 8
@.str.1 = private unnamed_addr constant [46 x i8] c"Unknown command flag '%c'; expected one of %s\00", align 1
@SUCCESS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @parse_run_request_flags(%struct.run_request_flags* %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.run_request_flags*, align 8
  %5 = alloca i8**, align 8
  store %struct.run_request_flags* %0, %struct.run_request_flags** %4, align 8
  store i8** %1, i8*** %5, align 8
  %6 = load i8**, i8*** %5, align 8
  %7 = getelementptr inbounds i8*, i8** %6, i64 0
  %8 = load i8*, i8** %7, align 8
  %9 = icmp ne i8* %8, null
  br i1 %9, label %12, label %10

10:                                               ; preds = %2
  %11 = call i32 (i8*, ...) @error(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0))
  store i32 %11, i32* %3, align 4
  br label %121

12:                                               ; preds = %2
  %13 = load i8*, i8** @COMMAND_FLAGS, align 8
  %14 = load i8**, i8*** %5, align 8
  %15 = getelementptr inbounds i8*, i8** %14, i64 0
  %16 = load i8*, i8** %15, align 8
  %17 = load i8, i8* %16, align 1
  %18 = call i32 @strchr(i8* %13, i8 signext %17)
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %29, label %20

20:                                               ; preds = %12
  %21 = load i8**, i8*** %5, align 8
  %22 = getelementptr inbounds i8*, i8** %21, i64 0
  %23 = load i8*, i8** %22, align 8
  %24 = getelementptr inbounds i8, i8* %23, i64 0
  %25 = load i8, i8* %24, align 1
  %26 = sext i8 %25 to i32
  %27 = load i8*, i8** @COMMAND_FLAGS, align 8
  %28 = call i32 (i8*, ...) @error(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.1, i64 0, i64 0), i32 %26, i8* %27)
  store i32 %28, i32* %3, align 4
  br label %121

29:                                               ; preds = %12
  br label %30

30:                                               ; preds = %114, %29
  %31 = load i8**, i8*** %5, align 8
  %32 = getelementptr inbounds i8*, i8** %31, i64 0
  %33 = load i8*, i8** %32, align 8
  %34 = load i8, i8* %33, align 1
  %35 = icmp ne i8 %34, 0
  br i1 %35, label %36, label %119

36:                                               ; preds = %30
  %37 = load i8**, i8*** %5, align 8
  %38 = getelementptr inbounds i8*, i8** %37, i64 0
  %39 = load i8*, i8** %38, align 8
  %40 = load i8, i8* %39, align 1
  %41 = sext i8 %40 to i32
  %42 = icmp eq i32 %41, 58
  br i1 %42, label %43, label %50

43:                                               ; preds = %36
  %44 = load %struct.run_request_flags*, %struct.run_request_flags** %4, align 8
  %45 = getelementptr inbounds %struct.run_request_flags, %struct.run_request_flags* %44, i32 0, i32 0
  store i32 1, i32* %45, align 4
  %46 = load i8**, i8*** %5, align 8
  %47 = getelementptr inbounds i8*, i8** %46, i64 0
  %48 = load i8*, i8** %47, align 8
  %49 = getelementptr inbounds i8, i8* %48, i32 1
  store i8* %49, i8** %47, align 8
  br label %119

50:                                               ; preds = %36
  %51 = load i8**, i8*** %5, align 8
  %52 = getelementptr inbounds i8*, i8** %51, i64 0
  %53 = load i8*, i8** %52, align 8
  %54 = load i8, i8* %53, align 1
  %55 = sext i8 %54 to i32
  %56 = icmp eq i32 %55, 64
  br i1 %56, label %57, label %60

57:                                               ; preds = %50
  %58 = load %struct.run_request_flags*, %struct.run_request_flags** %4, align 8
  %59 = getelementptr inbounds %struct.run_request_flags, %struct.run_request_flags* %58, i32 0, i32 1
  store i32 1, i32* %59, align 4
  br label %113

60:                                               ; preds = %50
  %61 = load i8**, i8*** %5, align 8
  %62 = getelementptr inbounds i8*, i8** %61, i64 0
  %63 = load i8*, i8** %62, align 8
  %64 = load i8, i8* %63, align 1
  %65 = sext i8 %64 to i32
  %66 = icmp eq i32 %65, 63
  br i1 %66, label %67, label %70

67:                                               ; preds = %60
  %68 = load %struct.run_request_flags*, %struct.run_request_flags** %4, align 8
  %69 = getelementptr inbounds %struct.run_request_flags, %struct.run_request_flags* %68, i32 0, i32 2
  store i32 1, i32* %69, align 4
  br label %112

70:                                               ; preds = %60
  %71 = load i8**, i8*** %5, align 8
  %72 = getelementptr inbounds i8*, i8** %71, i64 0
  %73 = load i8*, i8** %72, align 8
  %74 = load i8, i8* %73, align 1
  %75 = sext i8 %74 to i32
  %76 = icmp eq i32 %75, 60
  br i1 %76, label %77, label %80

77:                                               ; preds = %70
  %78 = load %struct.run_request_flags*, %struct.run_request_flags** %4, align 8
  %79 = getelementptr inbounds %struct.run_request_flags, %struct.run_request_flags* %78, i32 0, i32 3
  store i32 1, i32* %79, align 4
  br label %111

80:                                               ; preds = %70
  %81 = load i8**, i8*** %5, align 8
  %82 = getelementptr inbounds i8*, i8** %81, i64 0
  %83 = load i8*, i8** %82, align 8
  %84 = load i8, i8* %83, align 1
  %85 = sext i8 %84 to i32
  %86 = icmp eq i32 %85, 43
  br i1 %86, label %87, label %90

87:                                               ; preds = %80
  %88 = load %struct.run_request_flags*, %struct.run_request_flags** %4, align 8
  %89 = getelementptr inbounds %struct.run_request_flags, %struct.run_request_flags* %88, i32 0, i32 4
  store i32 1, i32* %89, align 4
  br label %110

90:                                               ; preds = %80
  %91 = load i8**, i8*** %5, align 8
  %92 = getelementptr inbounds i8*, i8** %91, i64 0
  %93 = load i8*, i8** %92, align 8
  %94 = load i8, i8* %93, align 1
  %95 = sext i8 %94 to i32
  %96 = icmp eq i32 %95, 62
  br i1 %96, label %97, label %100

97:                                               ; preds = %90
  %98 = load %struct.run_request_flags*, %struct.run_request_flags** %4, align 8
  %99 = getelementptr inbounds %struct.run_request_flags, %struct.run_request_flags* %98, i32 0, i32 5
  store i32 1, i32* %99, align 4
  br label %109

100:                                              ; preds = %90
  %101 = load i8**, i8*** %5, align 8
  %102 = getelementptr inbounds i8*, i8** %101, i64 0
  %103 = load i8*, i8** %102, align 8
  %104 = load i8, i8* %103, align 1
  %105 = sext i8 %104 to i32
  %106 = icmp ne i32 %105, 33
  br i1 %106, label %107, label %108

107:                                              ; preds = %100
  br label %119

108:                                              ; preds = %100
  br label %109

109:                                              ; preds = %108, %97
  br label %110

110:                                              ; preds = %109, %87
  br label %111

111:                                              ; preds = %110, %77
  br label %112

112:                                              ; preds = %111, %67
  br label %113

113:                                              ; preds = %112, %57
  br label %114

114:                                              ; preds = %113
  %115 = load i8**, i8*** %5, align 8
  %116 = getelementptr inbounds i8*, i8** %115, i64 0
  %117 = load i8*, i8** %116, align 8
  %118 = getelementptr inbounds i8, i8* %117, i32 1
  store i8* %118, i8** %116, align 8
  br label %30

119:                                              ; preds = %107, %43, %30
  %120 = load i32, i32* @SUCCESS, align 4
  store i32 %120, i32* %3, align 4
  br label %121

121:                                              ; preds = %119, %20, %10
  %122 = load i32, i32* %3, align 4
  ret i32 %122
}

declare dso_local i32 @error(i8*, ...) #1

declare dso_local i32 @strchr(i8*, i8 signext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
