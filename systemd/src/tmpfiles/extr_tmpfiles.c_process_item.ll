; ModuleID = '/home/carl/AnghaBench/systemd/src/tmpfiles/extr_tmpfiles.c_process_item.c'
source_filename = "/home/carl/AnghaBench/systemd/src/tmpfiles/extr_tmpfiles.c_process_item.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32, i64, i32 }

@arg_root = common dso_local global i32 0, align 4
@CHASE_NO_AUTOFS = common dso_local global i32 0, align 4
@CHASE_WARN = common dso_local global i32 0, align 4
@EREMOTE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [12 x i8] c"Skipping %s\00", align 1
@.str.1 = private unnamed_addr constant [63 x i8] c"Failed to determine whether '%s' is below autofs, ignoring: %m\00", align 1
@OPERATION_CREATE = common dso_local global i32 0, align 4
@OPERATION_REMOVE = common dso_local global i32 0, align 4
@OPERATION_CLEAN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_7__*, i32)* @process_item to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @process_item(%struct.TYPE_7__* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_7__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %4, align 8
  store i32 %1, i32* %5, align 4
  %10 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %11 = call i32 @assert(%struct.TYPE_7__* %10)
  %12 = load i32, i32* %5, align 4
  %13 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %14 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  %16 = xor i32 %15, -1
  %17 = and i32 %12, %16
  store i32 %17, i32* %6, align 4
  %18 = load i32, i32* %6, align 4
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %20, label %21

20:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %106

21:                                               ; preds = %2
  %22 = load i32, i32* %5, align 4
  %23 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %24 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = or i32 %25, %22
  store i32 %26, i32* %24, align 8
  %27 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %28 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %27, i32 0, i32 2
  %29 = load i32, i32* %28, align 8
  %30 = load i32, i32* @arg_root, align 4
  %31 = load i32, i32* @CHASE_NO_AUTOFS, align 4
  %32 = load i32, i32* @CHASE_WARN, align 4
  %33 = or i32 %31, %32
  %34 = call i32 @chase_symlinks(i32 %29, i32 %30, i32 %33, i32* null, i32* null)
  store i32 %34, i32* %7, align 4
  %35 = load i32, i32* %7, align 4
  %36 = load i32, i32* @EREMOTE, align 4
  %37 = sub nsw i32 0, %36
  %38 = icmp eq i32 %35, %37
  br i1 %38, label %39, label %45

39:                                               ; preds = %21
  %40 = load i32, i32* %7, align 4
  %41 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %42 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %41, i32 0, i32 2
  %43 = load i32, i32* %42, align 8
  %44 = call i32 @log_notice_errno(i32 %40, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i32 %43)
  store i32 0, i32* %3, align 4
  br label %106

45:                                               ; preds = %21
  %46 = load i32, i32* %7, align 4
  %47 = icmp slt i32 %46, 0
  br i1 %47, label %48, label %54

48:                                               ; preds = %45
  %49 = load i32, i32* %7, align 4
  %50 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %51 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %50, i32 0, i32 2
  %52 = load i32, i32* %51, align 8
  %53 = call i32 @log_debug_errno(i32 %49, i8* getelementptr inbounds ([63 x i8], [63 x i8]* @.str.1, i64 0, i64 0), i32 %52)
  br label %54

54:                                               ; preds = %48, %45
  %55 = load i32, i32* %5, align 4
  %56 = load i32, i32* @OPERATION_CREATE, align 4
  %57 = call i64 @FLAGS_SET(i32 %55, i32 %56)
  %58 = icmp ne i64 %57, 0
  br i1 %58, label %59, label %62

59:                                               ; preds = %54
  %60 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %61 = call i32 @create_item(%struct.TYPE_7__* %60)
  br label %63

62:                                               ; preds = %54
  br label %63

63:                                               ; preds = %62, %59
  %64 = phi i32 [ %61, %59 ], [ 0, %62 ]
  store i32 %64, i32* %7, align 4
  %65 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %66 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %65, i32 0, i32 1
  %67 = load i64, i64* %66, align 8
  %68 = icmp ne i64 %67, 0
  br i1 %68, label %69, label %70

69:                                               ; preds = %63
  store i32 0, i32* %7, align 4
  br label %70

70:                                               ; preds = %69, %63
  %71 = load i32, i32* %5, align 4
  %72 = load i32, i32* @OPERATION_REMOVE, align 4
  %73 = call i64 @FLAGS_SET(i32 %71, i32 %72)
  %74 = icmp ne i64 %73, 0
  br i1 %74, label %75, label %78

75:                                               ; preds = %70
  %76 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %77 = call i32 @remove_item(%struct.TYPE_7__* %76)
  br label %79

78:                                               ; preds = %70
  br label %79

79:                                               ; preds = %78, %75
  %80 = phi i32 [ %77, %75 ], [ 0, %78 ]
  store i32 %80, i32* %8, align 4
  %81 = load i32, i32* %5, align 4
  %82 = load i32, i32* @OPERATION_CLEAN, align 4
  %83 = call i64 @FLAGS_SET(i32 %81, i32 %82)
  %84 = icmp ne i64 %83, 0
  br i1 %84, label %85, label %88

85:                                               ; preds = %79
  %86 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %87 = call i32 @clean_item(%struct.TYPE_7__* %86)
  br label %89

88:                                               ; preds = %79
  br label %89

89:                                               ; preds = %88, %85
  %90 = phi i32 [ %87, %85 ], [ 0, %88 ]
  store i32 %90, i32* %9, align 4
  %91 = load i32, i32* %7, align 4
  %92 = icmp slt i32 %91, 0
  br i1 %92, label %93, label %95

93:                                               ; preds = %89
  %94 = load i32, i32* %7, align 4
  br label %104

95:                                               ; preds = %89
  %96 = load i32, i32* %8, align 4
  %97 = icmp slt i32 %96, 0
  br i1 %97, label %98, label %100

98:                                               ; preds = %95
  %99 = load i32, i32* %8, align 4
  br label %102

100:                                              ; preds = %95
  %101 = load i32, i32* %9, align 4
  br label %102

102:                                              ; preds = %100, %98
  %103 = phi i32 [ %99, %98 ], [ %101, %100 ]
  br label %104

104:                                              ; preds = %102, %93
  %105 = phi i32 [ %94, %93 ], [ %103, %102 ]
  store i32 %105, i32* %3, align 4
  br label %106

106:                                              ; preds = %104, %39, %20
  %107 = load i32, i32* %3, align 4
  ret i32 %107
}

declare dso_local i32 @assert(%struct.TYPE_7__*) #1

declare dso_local i32 @chase_symlinks(i32, i32, i32, i32*, i32*) #1

declare dso_local i32 @log_notice_errno(i32, i8*, i32) #1

declare dso_local i32 @log_debug_errno(i32, i8*, i32) #1

declare dso_local i64 @FLAGS_SET(i32, i32) #1

declare dso_local i32 @create_item(%struct.TYPE_7__*) #1

declare dso_local i32 @remove_item(%struct.TYPE_7__*) #1

declare dso_local i32 @clean_item(%struct.TYPE_7__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
