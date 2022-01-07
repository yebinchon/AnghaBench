; ModuleID = '/home/carl/AnghaBench/systemd/src/journal/extr_journal-file.c_journal_file_set_offline.c'
source_filename = "/home/carl/AnghaBench/systemd/src/journal/extr_journal-file.c_journal_file_set_offline.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { i64, i32, i32, %struct.TYPE_10__*, i32 }
%struct.TYPE_10__ = type { i64 }

@EPERM = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@STATE_ONLINE = common dso_local global i64 0, align 8
@OFFLINE_SYNCING = common dso_local global i32 0, align 4
@SIGBUS = common dso_local global i32 0, align 4
@SIG_BLOCK = common dso_local global i32 0, align 4
@journal_file_set_offline_thread = common dso_local global i32 0, align 4
@SIG_SETMASK = common dso_local global i32 0, align 4
@OFFLINE_JOINED = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @journal_file_set_offline(%struct.TYPE_11__* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_11__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.TYPE_11__* %0, %struct.TYPE_11__** %4, align 8
  store i32 %1, i32* %5, align 4
  %11 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %12 = call i32 @assert(%struct.TYPE_11__* %11)
  %13 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %14 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %13, i32 0, i32 4
  %15 = load i32, i32* %14, align 8
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %20, label %17

17:                                               ; preds = %2
  %18 = load i32, i32* @EPERM, align 4
  %19 = sub nsw i32 0, %18
  store i32 %19, i32* %3, align 4
  br label %121

20:                                               ; preds = %2
  %21 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %22 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = icmp slt i64 %23, 0
  br i1 %24, label %30, label %25

25:                                               ; preds = %20
  %26 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %27 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %26, i32 0, i32 3
  %28 = load %struct.TYPE_10__*, %struct.TYPE_10__** %27, align 8
  %29 = icmp ne %struct.TYPE_10__* %28, null
  br i1 %29, label %33, label %30

30:                                               ; preds = %25, %20
  %31 = load i32, i32* @EINVAL, align 4
  %32 = sub nsw i32 0, %31
  store i32 %32, i32* %3, align 4
  br label %121

33:                                               ; preds = %25
  %34 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %35 = call i32 @journal_file_is_offlining(%struct.TYPE_11__* %34)
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %48, label %37

37:                                               ; preds = %33
  %38 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %39 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %38, i32 0, i32 3
  %40 = load %struct.TYPE_10__*, %struct.TYPE_10__** %39, align 8
  %41 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = load i64, i64* @STATE_ONLINE, align 8
  %44 = icmp ne i64 %42, %43
  br i1 %44, label %45, label %48

45:                                               ; preds = %37
  %46 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %47 = call i32 @journal_file_set_offline_thread_join(%struct.TYPE_11__* %46)
  store i32 %47, i32* %3, align 4
  br label %121

48:                                               ; preds = %37, %33
  %49 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %50 = call i32 @journal_file_set_offline_try_restart(%struct.TYPE_11__* %49)
  store i32 %50, i32* %6, align 4
  %51 = load i32, i32* %6, align 4
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %56

53:                                               ; preds = %48
  %54 = load i32, i32* %5, align 4
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %59, label %56

56:                                               ; preds = %53, %48
  %57 = load i32, i32* %6, align 4
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %67, label %59

59:                                               ; preds = %56, %53
  %60 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %61 = call i32 @journal_file_set_offline_thread_join(%struct.TYPE_11__* %60)
  store i32 %61, i32* %7, align 4
  %62 = load i32, i32* %7, align 4
  %63 = icmp slt i32 %62, 0
  br i1 %63, label %64, label %66

64:                                               ; preds = %59
  %65 = load i32, i32* %7, align 4
  store i32 %65, i32* %3, align 4
  br label %121

66:                                               ; preds = %59
  br label %67

67:                                               ; preds = %66, %56
  %68 = load i32, i32* %6, align 4
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %70, label %71

70:                                               ; preds = %67
  store i32 0, i32* %3, align 4
  br label %121

71:                                               ; preds = %67
  %72 = load i32, i32* @OFFLINE_SYNCING, align 4
  %73 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %74 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %73, i32 0, i32 1
  store i32 %72, i32* %74, align 8
  %75 = load i32, i32* %5, align 4
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %77, label %80

77:                                               ; preds = %71
  %78 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %79 = call i32 @journal_file_set_offline_internal(%struct.TYPE_11__* %78)
  br label %120

80:                                               ; preds = %71
  %81 = call i64 @sigfillset(i32* %8)
  %82 = icmp sge i64 %81, 0
  %83 = zext i1 %82 to i32
  %84 = call i32 @assert_se(i32 %83)
  %85 = load i32, i32* @SIGBUS, align 4
  %86 = call i64 @sigdelset(i32* %8, i32 %85)
  %87 = icmp sge i64 %86, 0
  %88 = zext i1 %87 to i32
  %89 = call i32 @assert_se(i32 %88)
  %90 = load i32, i32* @SIG_BLOCK, align 4
  %91 = call i32 @pthread_sigmask(i32 %90, i32* %8, i32* %9)
  store i32 %91, i32* %7, align 4
  %92 = load i32, i32* %7, align 4
  %93 = icmp sgt i32 %92, 0
  br i1 %93, label %94, label %97

94:                                               ; preds = %80
  %95 = load i32, i32* %7, align 4
  %96 = sub nsw i32 0, %95
  store i32 %96, i32* %3, align 4
  br label %121

97:                                               ; preds = %80
  %98 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %99 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %98, i32 0, i32 2
  %100 = load i32, i32* @journal_file_set_offline_thread, align 4
  %101 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %102 = call i32 @pthread_create(i32* %99, i32* null, i32 %100, %struct.TYPE_11__* %101)
  store i32 %102, i32* %7, align 4
  %103 = load i32, i32* @SIG_SETMASK, align 4
  %104 = call i32 @pthread_sigmask(i32 %103, i32* %9, i32* null)
  store i32 %104, i32* %10, align 4
  %105 = load i32, i32* %7, align 4
  %106 = icmp sgt i32 %105, 0
  br i1 %106, label %107, label %113

107:                                              ; preds = %97
  %108 = load i32, i32* @OFFLINE_JOINED, align 4
  %109 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %110 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %109, i32 0, i32 1
  store i32 %108, i32* %110, align 8
  %111 = load i32, i32* %7, align 4
  %112 = sub nsw i32 0, %111
  store i32 %112, i32* %3, align 4
  br label %121

113:                                              ; preds = %97
  %114 = load i32, i32* %10, align 4
  %115 = icmp sgt i32 %114, 0
  br i1 %115, label %116, label %119

116:                                              ; preds = %113
  %117 = load i32, i32* %10, align 4
  %118 = sub nsw i32 0, %117
  store i32 %118, i32* %3, align 4
  br label %121

119:                                              ; preds = %113
  br label %120

120:                                              ; preds = %119, %77
  store i32 0, i32* %3, align 4
  br label %121

121:                                              ; preds = %120, %116, %107, %94, %70, %64, %45, %30, %17
  %122 = load i32, i32* %3, align 4
  ret i32 %122
}

declare dso_local i32 @assert(%struct.TYPE_11__*) #1

declare dso_local i32 @journal_file_is_offlining(%struct.TYPE_11__*) #1

declare dso_local i32 @journal_file_set_offline_thread_join(%struct.TYPE_11__*) #1

declare dso_local i32 @journal_file_set_offline_try_restart(%struct.TYPE_11__*) #1

declare dso_local i32 @journal_file_set_offline_internal(%struct.TYPE_11__*) #1

declare dso_local i32 @assert_se(i32) #1

declare dso_local i64 @sigfillset(i32*) #1

declare dso_local i64 @sigdelset(i32*, i32) #1

declare dso_local i32 @pthread_sigmask(i32, i32*, i32*) #1

declare !callback !2 dso_local i32 @pthread_create(i32*, i32*, i32, %struct.TYPE_11__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
!2 = !{!3}
!3 = !{i64 2, i64 3, i1 false}
