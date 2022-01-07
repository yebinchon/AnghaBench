; ModuleID = '/home/carl/AnghaBench/reactos/drivers/filesystems/btrfs/extr_reparse.c_set_reparse_point.c'
source_filename = "/home/carl/AnghaBench/reactos/drivers/filesystems/btrfs/extr_reparse.c_set_reparse_point.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_30__ = type { i64, i64, %struct.TYPE_23__ }
%struct.TYPE_23__ = type { i8* }
%struct.TYPE_31__ = type { %struct.TYPE_25__, %struct.TYPE_21__* }
%struct.TYPE_25__ = type { %struct.TYPE_24__ }
%struct.TYPE_24__ = type { i32 }
%struct.TYPE_21__ = type { %struct.TYPE_29__*, %struct.TYPE_28__* }
%struct.TYPE_29__ = type { i32, %struct.TYPE_27__* }
%struct.TYPE_27__ = type { %struct.TYPE_28__*, %struct.TYPE_27__* }
%struct.TYPE_28__ = type { %struct.TYPE_22__*, %struct.TYPE_26__, i64 }
%struct.TYPE_22__ = type { i32 }
%struct.TYPE_26__ = type { i32* }

@STATUS_SUCCESS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [10 x i8] c"(%p, %p)\0A\00", align 1
@.str.1 = private unnamed_addr constant [21 x i8] c"FileObject was NULL\0A\00", align 1
@STATUS_INVALID_PARAMETER = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [14 x i8] c"ccb was NULL\0A\00", align 1
@UserMode = common dso_local global i64 0, align 8
@FILE_WRITE_ATTRIBUTES = common dso_local global i32 0, align 4
@FILE_WRITE_DATA = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [25 x i8] c"insufficient privileges\0A\00", align 1
@STATUS_ACCESS_DENIED = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [18 x i8] c"fileref was NULL\0A\00", align 1
@.str.5 = private unnamed_addr constant [34 x i8] c"set_reparse_point2 returned %08x\0A\00", align 1
@FILE_NOTIFY_CHANGE_LAST_WRITE = common dso_local global i32 0, align 4
@FILE_NOTIFY_CHANGE_ATTRIBUTES = common dso_local global i32 0, align 4
@FILE_ACTION_MODIFIED = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @set_reparse_point(i32 %0, %struct.TYPE_30__* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_30__*, align 8
  %6 = alloca %struct.TYPE_31__*, align 8
  %7 = alloca %struct.TYPE_21__*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.TYPE_28__*, align 8
  %13 = alloca %struct.TYPE_29__*, align 8
  %14 = alloca %struct.TYPE_27__*, align 8
  %15 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store %struct.TYPE_30__* %1, %struct.TYPE_30__** %5, align 8
  %16 = load %struct.TYPE_30__*, %struct.TYPE_30__** %5, align 8
  %17 = call %struct.TYPE_31__* @IoGetCurrentIrpStackLocation(%struct.TYPE_30__* %16)
  store %struct.TYPE_31__* %17, %struct.TYPE_31__** %6, align 8
  %18 = load %struct.TYPE_31__*, %struct.TYPE_31__** %6, align 8
  %19 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %18, i32 0, i32 1
  %20 = load %struct.TYPE_21__*, %struct.TYPE_21__** %19, align 8
  store %struct.TYPE_21__* %20, %struct.TYPE_21__** %7, align 8
  %21 = load %struct.TYPE_30__*, %struct.TYPE_30__** %5, align 8
  %22 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %21, i32 0, i32 2
  %23 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %22, i32 0, i32 0
  %24 = load i8*, i8** %23, align 8
  store i8* %24, i8** %8, align 8
  %25 = load i8*, i8** %8, align 8
  %26 = bitcast i8* %25 to i32*
  store i32* %26, i32** %9, align 8
  %27 = load %struct.TYPE_31__*, %struct.TYPE_31__** %6, align 8
  %28 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  store i32 %31, i32* %10, align 4
  %32 = load i32, i32* @STATUS_SUCCESS, align 4
  store i32 %32, i32* %11, align 4
  %33 = load i32, i32* %4, align 4
  %34 = load %struct.TYPE_30__*, %struct.TYPE_30__** %5, align 8
  %35 = call i32 @TRACE(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i32 %33, %struct.TYPE_30__* %34)
  %36 = call i32 @InitializeListHead(i32* %15)
  %37 = load %struct.TYPE_21__*, %struct.TYPE_21__** %7, align 8
  %38 = icmp ne %struct.TYPE_21__* %37, null
  br i1 %38, label %42, label %39

39:                                               ; preds = %2
  %40 = call i32 (i8*, ...) @ERR(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0))
  %41 = load i32, i32* @STATUS_INVALID_PARAMETER, align 4
  store i32 %41, i32* %3, align 4
  br label %154

42:                                               ; preds = %2
  %43 = load %struct.TYPE_30__*, %struct.TYPE_30__** %5, align 8
  %44 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %43, i32 0, i32 1
  %45 = load i64, i64* %44, align 8
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %49

47:                                               ; preds = %42
  %48 = load i32, i32* @STATUS_INVALID_PARAMETER, align 4
  store i32 %48, i32* %3, align 4
  br label %154

49:                                               ; preds = %42
  %50 = load %struct.TYPE_21__*, %struct.TYPE_21__** %7, align 8
  %51 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %50, i32 0, i32 1
  %52 = load %struct.TYPE_28__*, %struct.TYPE_28__** %51, align 8
  store %struct.TYPE_28__* %52, %struct.TYPE_28__** %12, align 8
  %53 = load %struct.TYPE_21__*, %struct.TYPE_21__** %7, align 8
  %54 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %53, i32 0, i32 0
  %55 = load %struct.TYPE_29__*, %struct.TYPE_29__** %54, align 8
  store %struct.TYPE_29__* %55, %struct.TYPE_29__** %13, align 8
  %56 = load %struct.TYPE_29__*, %struct.TYPE_29__** %13, align 8
  %57 = icmp ne %struct.TYPE_29__* %56, null
  br i1 %57, label %61, label %58

58:                                               ; preds = %49
  %59 = call i32 (i8*, ...) @ERR(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.2, i64 0, i64 0))
  %60 = load i32, i32* @STATUS_INVALID_PARAMETER, align 4
  store i32 %60, i32* %3, align 4
  br label %154

61:                                               ; preds = %49
  %62 = load %struct.TYPE_30__*, %struct.TYPE_30__** %5, align 8
  %63 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %62, i32 0, i32 0
  %64 = load i64, i64* %63, align 8
  %65 = load i64, i64* @UserMode, align 8
  %66 = icmp eq i64 %64, %65
  br i1 %66, label %67, label %79

67:                                               ; preds = %61
  %68 = load %struct.TYPE_29__*, %struct.TYPE_29__** %13, align 8
  %69 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 8
  %71 = load i32, i32* @FILE_WRITE_ATTRIBUTES, align 4
  %72 = load i32, i32* @FILE_WRITE_DATA, align 4
  %73 = or i32 %71, %72
  %74 = and i32 %70, %73
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %79, label %76

76:                                               ; preds = %67
  %77 = call i32 @WARN(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.3, i64 0, i64 0))
  %78 = load i32, i32* @STATUS_ACCESS_DENIED, align 4
  store i32 %78, i32* %3, align 4
  br label %154

79:                                               ; preds = %67, %61
  %80 = load %struct.TYPE_29__*, %struct.TYPE_29__** %13, align 8
  %81 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %80, i32 0, i32 1
  %82 = load %struct.TYPE_27__*, %struct.TYPE_27__** %81, align 8
  store %struct.TYPE_27__* %82, %struct.TYPE_27__** %14, align 8
  %83 = load %struct.TYPE_27__*, %struct.TYPE_27__** %14, align 8
  %84 = icmp ne %struct.TYPE_27__* %83, null
  br i1 %84, label %88, label %85

85:                                               ; preds = %79
  %86 = call i32 (i8*, ...) @ERR(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.4, i64 0, i64 0))
  %87 = load i32, i32* @STATUS_INVALID_PARAMETER, align 4
  store i32 %87, i32* %3, align 4
  br label %154

88:                                               ; preds = %79
  %89 = load %struct.TYPE_28__*, %struct.TYPE_28__** %12, align 8
  %90 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %89, i32 0, i32 2
  %91 = load i64, i64* %90, align 8
  %92 = icmp ne i64 %91, 0
  br i1 %92, label %93, label %100

93:                                               ; preds = %88
  %94 = load %struct.TYPE_27__*, %struct.TYPE_27__** %14, align 8
  %95 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %94, i32 0, i32 1
  %96 = load %struct.TYPE_27__*, %struct.TYPE_27__** %95, align 8
  store %struct.TYPE_27__* %96, %struct.TYPE_27__** %14, align 8
  %97 = load %struct.TYPE_27__*, %struct.TYPE_27__** %14, align 8
  %98 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %97, i32 0, i32 0
  %99 = load %struct.TYPE_28__*, %struct.TYPE_28__** %98, align 8
  store %struct.TYPE_28__* %99, %struct.TYPE_28__** %12, align 8
  br label %100

100:                                              ; preds = %93, %88
  %101 = load %struct.TYPE_28__*, %struct.TYPE_28__** %12, align 8
  %102 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %101, i32 0, i32 0
  %103 = load %struct.TYPE_22__*, %struct.TYPE_22__** %102, align 8
  %104 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %103, i32 0, i32 0
  %105 = call i32 @ExAcquireResourceSharedLite(i32* %104, i32 1)
  %106 = load %struct.TYPE_28__*, %struct.TYPE_28__** %12, align 8
  %107 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %106, i32 0, i32 1
  %108 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %107, i32 0, i32 0
  %109 = load i32*, i32** %108, align 8
  %110 = call i32 @ExAcquireResourceExclusiveLite(i32* %109, i32 1)
  %111 = load %struct.TYPE_28__*, %struct.TYPE_28__** %12, align 8
  %112 = load i32*, i32** %9, align 8
  %113 = load i32, i32* %10, align 4
  %114 = load %struct.TYPE_29__*, %struct.TYPE_29__** %13, align 8
  %115 = load %struct.TYPE_27__*, %struct.TYPE_27__** %14, align 8
  %116 = load %struct.TYPE_30__*, %struct.TYPE_30__** %5, align 8
  %117 = call i32 @set_reparse_point2(%struct.TYPE_28__* %111, i32* %112, i32 %113, %struct.TYPE_29__* %114, %struct.TYPE_27__* %115, %struct.TYPE_30__* %116, i32* %15)
  store i32 %117, i32* %11, align 4
  %118 = load i32, i32* %11, align 4
  %119 = call i64 @NT_SUCCESS(i32 %118)
  %120 = icmp ne i64 %119, 0
  br i1 %120, label %124, label %121

121:                                              ; preds = %100
  %122 = load i32, i32* %11, align 4
  %123 = call i32 (i8*, ...) @ERR(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.5, i64 0, i64 0), i32 %122)
  br label %131

124:                                              ; preds = %100
  %125 = load %struct.TYPE_27__*, %struct.TYPE_27__** %14, align 8
  %126 = load i32, i32* @FILE_NOTIFY_CHANGE_LAST_WRITE, align 4
  %127 = load i32, i32* @FILE_NOTIFY_CHANGE_ATTRIBUTES, align 4
  %128 = or i32 %126, %127
  %129 = load i32, i32* @FILE_ACTION_MODIFIED, align 4
  %130 = call i32 @queue_notification_fcb(%struct.TYPE_27__* %125, i32 %128, i32 %129, i32* null)
  br label %131

131:                                              ; preds = %124, %121
  %132 = load i32, i32* %11, align 4
  %133 = call i64 @NT_SUCCESS(i32 %132)
  %134 = icmp ne i64 %133, 0
  br i1 %134, label %135, label %137

135:                                              ; preds = %131
  %136 = call i32 @clear_rollback(i32* %15)
  br label %142

137:                                              ; preds = %131
  %138 = load %struct.TYPE_28__*, %struct.TYPE_28__** %12, align 8
  %139 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %138, i32 0, i32 0
  %140 = load %struct.TYPE_22__*, %struct.TYPE_22__** %139, align 8
  %141 = call i32 @do_rollback(%struct.TYPE_22__* %140, i32* %15)
  br label %142

142:                                              ; preds = %137, %135
  %143 = load %struct.TYPE_28__*, %struct.TYPE_28__** %12, align 8
  %144 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %143, i32 0, i32 1
  %145 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %144, i32 0, i32 0
  %146 = load i32*, i32** %145, align 8
  %147 = call i32 @ExReleaseResourceLite(i32* %146)
  %148 = load %struct.TYPE_28__*, %struct.TYPE_28__** %12, align 8
  %149 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %148, i32 0, i32 0
  %150 = load %struct.TYPE_22__*, %struct.TYPE_22__** %149, align 8
  %151 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %150, i32 0, i32 0
  %152 = call i32 @ExReleaseResourceLite(i32* %151)
  %153 = load i32, i32* %11, align 4
  store i32 %153, i32* %3, align 4
  br label %154

154:                                              ; preds = %142, %85, %76, %58, %47, %39
  %155 = load i32, i32* %3, align 4
  ret i32 %155
}

declare dso_local %struct.TYPE_31__* @IoGetCurrentIrpStackLocation(%struct.TYPE_30__*) #1

declare dso_local i32 @TRACE(i8*, i32, %struct.TYPE_30__*) #1

declare dso_local i32 @InitializeListHead(i32*) #1

declare dso_local i32 @ERR(i8*, ...) #1

declare dso_local i32 @WARN(i8*) #1

declare dso_local i32 @ExAcquireResourceSharedLite(i32*, i32) #1

declare dso_local i32 @ExAcquireResourceExclusiveLite(i32*, i32) #1

declare dso_local i32 @set_reparse_point2(%struct.TYPE_28__*, i32*, i32, %struct.TYPE_29__*, %struct.TYPE_27__*, %struct.TYPE_30__*, i32*) #1

declare dso_local i64 @NT_SUCCESS(i32) #1

declare dso_local i32 @queue_notification_fcb(%struct.TYPE_27__*, i32, i32, i32*) #1

declare dso_local i32 @clear_rollback(i32*) #1

declare dso_local i32 @do_rollback(%struct.TYPE_22__*, i32*) #1

declare dso_local i32 @ExReleaseResourceLite(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
