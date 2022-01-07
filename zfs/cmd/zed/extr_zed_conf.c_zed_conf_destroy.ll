; ModuleID = '/home/carl/AnghaBench/zfs/cmd/zed/extr_zed_conf.c_zed_conf_destroy.c'
source_filename = "/home/carl/AnghaBench/zfs/cmd/zed/extr_zed_conf.c_zed_conf_destroy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.zed_conf = type { i32, i32, i32*, %struct.zed_conf*, %struct.zed_conf*, %struct.zed_conf*, %struct.zed_conf* }

@LOG_WARNING = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [36 x i8] c"Failed to close state file \22%s\22: %s\00", align 1
@errno = common dso_local global i64 0, align 8
@ENOENT = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [35 x i8] c"Failed to remove PID file \22%s\22: %s\00", align 1
@.str.2 = private unnamed_addr constant [34 x i8] c"Failed to close PID file \22%s\22: %s\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @zed_conf_destroy(%struct.zed_conf* %0) #0 {
  %2 = alloca %struct.zed_conf*, align 8
  store %struct.zed_conf* %0, %struct.zed_conf** %2, align 8
  %3 = load %struct.zed_conf*, %struct.zed_conf** %2, align 8
  %4 = icmp ne %struct.zed_conf* %3, null
  br i1 %4, label %6, label %5

5:                                                ; preds = %1
  br label %137

6:                                                ; preds = %1
  %7 = load %struct.zed_conf*, %struct.zed_conf** %2, align 8
  %8 = getelementptr inbounds %struct.zed_conf, %struct.zed_conf* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 8
  %10 = icmp sge i32 %9, 0
  br i1 %10, label %11, label %28

11:                                               ; preds = %6
  %12 = load %struct.zed_conf*, %struct.zed_conf** %2, align 8
  %13 = getelementptr inbounds %struct.zed_conf, %struct.zed_conf* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  %15 = call i64 @close(i32 %14)
  %16 = icmp slt i64 %15, 0
  br i1 %16, label %17, label %25

17:                                               ; preds = %11
  %18 = load i32, i32* @LOG_WARNING, align 4
  %19 = load %struct.zed_conf*, %struct.zed_conf** %2, align 8
  %20 = getelementptr inbounds %struct.zed_conf, %struct.zed_conf* %19, i32 0, i32 3
  %21 = load %struct.zed_conf*, %struct.zed_conf** %20, align 8
  %22 = load i64, i64* @errno, align 8
  %23 = call i32 @strerror(i64 %22)
  %24 = call i32 @zed_log_msg(i32 %18, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0), %struct.zed_conf* %21, i32 %23)
  br label %25

25:                                               ; preds = %17, %11
  %26 = load %struct.zed_conf*, %struct.zed_conf** %2, align 8
  %27 = getelementptr inbounds %struct.zed_conf, %struct.zed_conf* %26, i32 0, i32 0
  store i32 -1, i32* %27, align 8
  br label %28

28:                                               ; preds = %25, %6
  %29 = load %struct.zed_conf*, %struct.zed_conf** %2, align 8
  %30 = getelementptr inbounds %struct.zed_conf, %struct.zed_conf* %29, i32 0, i32 5
  %31 = load %struct.zed_conf*, %struct.zed_conf** %30, align 8
  %32 = icmp ne %struct.zed_conf* %31, null
  br i1 %32, label %33, label %52

33:                                               ; preds = %28
  %34 = load %struct.zed_conf*, %struct.zed_conf** %2, align 8
  %35 = getelementptr inbounds %struct.zed_conf, %struct.zed_conf* %34, i32 0, i32 5
  %36 = load %struct.zed_conf*, %struct.zed_conf** %35, align 8
  %37 = call i64 @unlink(%struct.zed_conf* %36)
  %38 = icmp slt i64 %37, 0
  br i1 %38, label %39, label %51

39:                                               ; preds = %33
  %40 = load i64, i64* @errno, align 8
  %41 = load i64, i64* @ENOENT, align 8
  %42 = icmp ne i64 %40, %41
  br i1 %42, label %43, label %51

43:                                               ; preds = %39
  %44 = load i32, i32* @LOG_WARNING, align 4
  %45 = load %struct.zed_conf*, %struct.zed_conf** %2, align 8
  %46 = getelementptr inbounds %struct.zed_conf, %struct.zed_conf* %45, i32 0, i32 5
  %47 = load %struct.zed_conf*, %struct.zed_conf** %46, align 8
  %48 = load i64, i64* @errno, align 8
  %49 = call i32 @strerror(i64 %48)
  %50 = call i32 @zed_log_msg(i32 %44, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.1, i64 0, i64 0), %struct.zed_conf* %47, i32 %49)
  br label %51

51:                                               ; preds = %43, %39, %33
  br label %52

52:                                               ; preds = %51, %28
  %53 = load %struct.zed_conf*, %struct.zed_conf** %2, align 8
  %54 = getelementptr inbounds %struct.zed_conf, %struct.zed_conf* %53, i32 0, i32 1
  %55 = load i32, i32* %54, align 4
  %56 = icmp sge i32 %55, 0
  br i1 %56, label %57, label %74

57:                                               ; preds = %52
  %58 = load %struct.zed_conf*, %struct.zed_conf** %2, align 8
  %59 = getelementptr inbounds %struct.zed_conf, %struct.zed_conf* %58, i32 0, i32 1
  %60 = load i32, i32* %59, align 4
  %61 = call i64 @close(i32 %60)
  %62 = icmp slt i64 %61, 0
  br i1 %62, label %63, label %71

63:                                               ; preds = %57
  %64 = load i32, i32* @LOG_WARNING, align 4
  %65 = load %struct.zed_conf*, %struct.zed_conf** %2, align 8
  %66 = getelementptr inbounds %struct.zed_conf, %struct.zed_conf* %65, i32 0, i32 5
  %67 = load %struct.zed_conf*, %struct.zed_conf** %66, align 8
  %68 = load i64, i64* @errno, align 8
  %69 = call i32 @strerror(i64 %68)
  %70 = call i32 @zed_log_msg(i32 %64, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.2, i64 0, i64 0), %struct.zed_conf* %67, i32 %69)
  br label %71

71:                                               ; preds = %63, %57
  %72 = load %struct.zed_conf*, %struct.zed_conf** %2, align 8
  %73 = getelementptr inbounds %struct.zed_conf, %struct.zed_conf* %72, i32 0, i32 1
  store i32 -1, i32* %73, align 4
  br label %74

74:                                               ; preds = %71, %52
  %75 = load %struct.zed_conf*, %struct.zed_conf** %2, align 8
  %76 = getelementptr inbounds %struct.zed_conf, %struct.zed_conf* %75, i32 0, i32 6
  %77 = load %struct.zed_conf*, %struct.zed_conf** %76, align 8
  %78 = icmp ne %struct.zed_conf* %77, null
  br i1 %78, label %79, label %86

79:                                               ; preds = %74
  %80 = load %struct.zed_conf*, %struct.zed_conf** %2, align 8
  %81 = getelementptr inbounds %struct.zed_conf, %struct.zed_conf* %80, i32 0, i32 6
  %82 = load %struct.zed_conf*, %struct.zed_conf** %81, align 8
  %83 = call i32 @free(%struct.zed_conf* %82)
  %84 = load %struct.zed_conf*, %struct.zed_conf** %2, align 8
  %85 = getelementptr inbounds %struct.zed_conf, %struct.zed_conf* %84, i32 0, i32 6
  store %struct.zed_conf* null, %struct.zed_conf** %85, align 8
  br label %86

86:                                               ; preds = %79, %74
  %87 = load %struct.zed_conf*, %struct.zed_conf** %2, align 8
  %88 = getelementptr inbounds %struct.zed_conf, %struct.zed_conf* %87, i32 0, i32 5
  %89 = load %struct.zed_conf*, %struct.zed_conf** %88, align 8
  %90 = icmp ne %struct.zed_conf* %89, null
  br i1 %90, label %91, label %98

91:                                               ; preds = %86
  %92 = load %struct.zed_conf*, %struct.zed_conf** %2, align 8
  %93 = getelementptr inbounds %struct.zed_conf, %struct.zed_conf* %92, i32 0, i32 5
  %94 = load %struct.zed_conf*, %struct.zed_conf** %93, align 8
  %95 = call i32 @free(%struct.zed_conf* %94)
  %96 = load %struct.zed_conf*, %struct.zed_conf** %2, align 8
  %97 = getelementptr inbounds %struct.zed_conf, %struct.zed_conf* %96, i32 0, i32 5
  store %struct.zed_conf* null, %struct.zed_conf** %97, align 8
  br label %98

98:                                               ; preds = %91, %86
  %99 = load %struct.zed_conf*, %struct.zed_conf** %2, align 8
  %100 = getelementptr inbounds %struct.zed_conf, %struct.zed_conf* %99, i32 0, i32 4
  %101 = load %struct.zed_conf*, %struct.zed_conf** %100, align 8
  %102 = icmp ne %struct.zed_conf* %101, null
  br i1 %102, label %103, label %110

103:                                              ; preds = %98
  %104 = load %struct.zed_conf*, %struct.zed_conf** %2, align 8
  %105 = getelementptr inbounds %struct.zed_conf, %struct.zed_conf* %104, i32 0, i32 4
  %106 = load %struct.zed_conf*, %struct.zed_conf** %105, align 8
  %107 = call i32 @free(%struct.zed_conf* %106)
  %108 = load %struct.zed_conf*, %struct.zed_conf** %2, align 8
  %109 = getelementptr inbounds %struct.zed_conf, %struct.zed_conf* %108, i32 0, i32 4
  store %struct.zed_conf* null, %struct.zed_conf** %109, align 8
  br label %110

110:                                              ; preds = %103, %98
  %111 = load %struct.zed_conf*, %struct.zed_conf** %2, align 8
  %112 = getelementptr inbounds %struct.zed_conf, %struct.zed_conf* %111, i32 0, i32 3
  %113 = load %struct.zed_conf*, %struct.zed_conf** %112, align 8
  %114 = icmp ne %struct.zed_conf* %113, null
  br i1 %114, label %115, label %122

115:                                              ; preds = %110
  %116 = load %struct.zed_conf*, %struct.zed_conf** %2, align 8
  %117 = getelementptr inbounds %struct.zed_conf, %struct.zed_conf* %116, i32 0, i32 3
  %118 = load %struct.zed_conf*, %struct.zed_conf** %117, align 8
  %119 = call i32 @free(%struct.zed_conf* %118)
  %120 = load %struct.zed_conf*, %struct.zed_conf** %2, align 8
  %121 = getelementptr inbounds %struct.zed_conf, %struct.zed_conf* %120, i32 0, i32 3
  store %struct.zed_conf* null, %struct.zed_conf** %121, align 8
  br label %122

122:                                              ; preds = %115, %110
  %123 = load %struct.zed_conf*, %struct.zed_conf** %2, align 8
  %124 = getelementptr inbounds %struct.zed_conf, %struct.zed_conf* %123, i32 0, i32 2
  %125 = load i32*, i32** %124, align 8
  %126 = icmp ne i32* %125, null
  br i1 %126, label %127, label %134

127:                                              ; preds = %122
  %128 = load %struct.zed_conf*, %struct.zed_conf** %2, align 8
  %129 = getelementptr inbounds %struct.zed_conf, %struct.zed_conf* %128, i32 0, i32 2
  %130 = load i32*, i32** %129, align 8
  %131 = call i32 @zed_strings_destroy(i32* %130)
  %132 = load %struct.zed_conf*, %struct.zed_conf** %2, align 8
  %133 = getelementptr inbounds %struct.zed_conf, %struct.zed_conf* %132, i32 0, i32 2
  store i32* null, i32** %133, align 8
  br label %134

134:                                              ; preds = %127, %122
  %135 = load %struct.zed_conf*, %struct.zed_conf** %2, align 8
  %136 = call i32 @free(%struct.zed_conf* %135)
  br label %137

137:                                              ; preds = %134, %5
  ret void
}

declare dso_local i64 @close(i32) #1

declare dso_local i32 @zed_log_msg(i32, i8*, %struct.zed_conf*, i32) #1

declare dso_local i32 @strerror(i64) #1

declare dso_local i64 @unlink(%struct.zed_conf*) #1

declare dso_local i32 @free(%struct.zed_conf*) #1

declare dso_local i32 @zed_strings_destroy(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
