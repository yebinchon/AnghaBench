; ModuleID = '/home/carl/AnghaBench/toxcore/auto_tests/extr_friends_test.c_main.c'
source_filename = "/home/carl/AnghaBench/toxcore/auto_tests/extr_friends_test.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i32 }

@.str = private unnamed_addr constant [37 x i8] c"=========== FRIENDS_TEST ===========\00", align 1
@crypto_box_PUBLICKEYBYTES = common dso_local global i32 0, align 4
@PROT_READ = common dso_local global i32 0, align 4
@PROT_WRITE = common dso_local global i32 0, align 4
@MAP_SHARED = common dso_local global i32 0, align 4
@MAP_ANONYMOUS = common dso_local global i32 0, align 4
@parent_id = common dso_local global i32 0, align 4
@child_id = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [32 x i8] c"friends_test: Starting test...\0A\00", align 1
@stdout = common dso_local global i32 0, align 4
@child_pid = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [18 x i8] c"Y-yes Mr. Watson?\00", align 1
@m = common dso_local global %struct.TYPE_9__* null, align 8
@MS_SYNC = common dso_local global i32 0, align 4
@child_got_request = common dso_local global i32 0, align 4
@child_got_statuschange = common dso_local global i32 0, align 4
@request_flags = common dso_local global i32 0, align 4
@FIRST_FLAG = common dso_local global i32 0, align 4
@SECOND_FLAG = common dso_local global i32 0, align 4
@cleanup = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [49 x i8] c"friends_test: atexit() failed!\0AFailing build...\0A\00", align 1
@stderr = common dso_local global i32 0, align 4
@SIGKILL = common dso_local global i32 0, align 4
@parent_confirm_status = common dso_local global i32 0, align 4
@parent_confirm_message = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [29 x i8] c"friends_test: Build passed!\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  %8 = call i32 @puts(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0))
  %9 = load i32, i32* @crypto_box_PUBLICKEYBYTES, align 4
  %10 = load i32, i32* @PROT_READ, align 4
  %11 = load i32, i32* @PROT_WRITE, align 4
  %12 = or i32 %10, %11
  %13 = load i32, i32* @MAP_SHARED, align 4
  %14 = load i32, i32* @MAP_ANONYMOUS, align 4
  %15 = or i32 %13, %14
  %16 = call i32 @mmap(i32* null, i32 %9, i32 %12, i32 %15, i32 -1, i32 0)
  store i32 %16, i32* @parent_id, align 4
  %17 = load i32, i32* @crypto_box_PUBLICKEYBYTES, align 4
  %18 = load i32, i32* @PROT_READ, align 4
  %19 = load i32, i32* @PROT_WRITE, align 4
  %20 = or i32 %18, %19
  %21 = load i32, i32* @MAP_SHARED, align 4
  %22 = load i32, i32* @MAP_ANONYMOUS, align 4
  %23 = or i32 %21, %22
  %24 = call i32 @mmap(i32* null, i32 %17, i32 %20, i32 %23, i32 -1, i32 0)
  store i32 %24, i32* @child_id, align 4
  %25 = load i32, i32* @stdout, align 4
  %26 = call i32 @fputs(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0), i32 %25)
  %27 = call i32 (...) @fork()
  store i32 %27, i32* @child_pid, align 4
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %29, label %88

29:                                               ; preds = %2
  store i32 0, i32* %6, align 4
  store i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.2, i64 0, i64 0), i8** %7, align 8
  %30 = call %struct.TYPE_9__* (...) @initMessenger()
  store %struct.TYPE_9__* %30, %struct.TYPE_9__** @m, align 8
  %31 = load %struct.TYPE_9__*, %struct.TYPE_9__** @m, align 8
  %32 = load i32, i32* @child_id, align 4
  %33 = call i32 @Messenger_save(%struct.TYPE_9__* %31, i32 %32)
  %34 = load i32, i32* @child_id, align 4
  %35 = load i32, i32* @crypto_box_PUBLICKEYBYTES, align 4
  %36 = load i32, i32* @MS_SYNC, align 4
  %37 = call i32 @msync(i32 %34, i32 %35, i32 %36)
  %38 = load %struct.TYPE_9__*, %struct.TYPE_9__** @m, align 8
  %39 = load i32, i32* @child_got_request, align 4
  %40 = call i32 @m_callback_friendrequest(%struct.TYPE_9__* %38, i32 %39, i32* null)
  %41 = load %struct.TYPE_9__*, %struct.TYPE_9__** @m, align 8
  %42 = load i32, i32* @child_got_statuschange, align 4
  %43 = call i32 @m_callback_statusmessage(%struct.TYPE_9__* %41, i32 %42, i32* null)
  br label %44

44:                                               ; preds = %50, %29
  %45 = load i32, i32* @request_flags, align 4
  %46 = load i32, i32* @FIRST_FLAG, align 4
  %47 = and i32 %45, %46
  %48 = icmp ne i32 %47, 0
  %49 = xor i1 %48, true
  br i1 %49, label %50, label %55

50:                                               ; preds = %44
  %51 = load %struct.TYPE_9__*, %struct.TYPE_9__** @m, align 8
  %52 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = call i32 @do_tox(i32 %53)
  br label %44

55:                                               ; preds = %44
  br label %56

56:                                               ; preds = %62, %55
  %57 = load i32, i32* @request_flags, align 4
  %58 = load i32, i32* @SECOND_FLAG, align 4
  %59 = and i32 %57, %58
  %60 = icmp ne i32 %59, 0
  %61 = xor i1 %60, true
  br i1 %61, label %62, label %67

62:                                               ; preds = %56
  %63 = load %struct.TYPE_9__*, %struct.TYPE_9__** @m, align 8
  %64 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 4
  %66 = call i32 @do_tox(i32 %65)
  br label %56

67:                                               ; preds = %56
  store i32 0, i32* %6, align 4
  br label %68

68:                                               ; preds = %82, %67
  %69 = load i32, i32* %6, align 4
  %70 = icmp slt i32 %69, 6
  br i1 %70, label %71, label %85

71:                                               ; preds = %68
  %72 = load %struct.TYPE_9__*, %struct.TYPE_9__** @m, align 8
  %73 = load i8*, i8** %7, align 8
  %74 = bitcast i8* %73 to i32*
  %75 = load i8*, i8** %7, align 8
  %76 = call i32 @strlen(i8* %75)
  %77 = call i32 @m_sendmessage(%struct.TYPE_9__* %72, i32 0, i32* %74, i32 %76)
  %78 = load %struct.TYPE_9__*, %struct.TYPE_9__** @m, align 8
  %79 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 4
  %81 = call i32 @do_tox(i32 %80)
  br label %82

82:                                               ; preds = %71
  %83 = load i32, i32* %6, align 4
  %84 = add nsw i32 %83, 1
  store i32 %84, i32* %6, align 4
  br label %68

85:                                               ; preds = %68
  %86 = load %struct.TYPE_9__*, %struct.TYPE_9__** @m, align 8
  %87 = call i32 @cleanupMessenger(%struct.TYPE_9__* %86)
  store i32 0, i32* %3, align 4
  br label %131

88:                                               ; preds = %2
  %89 = load i32, i32* @cleanup, align 4
  %90 = call i64 @atexit(i32 %89)
  %91 = icmp ne i64 %90, 0
  br i1 %91, label %92, label %98

92:                                               ; preds = %88
  %93 = load i32, i32* @stderr, align 4
  %94 = call i32 @fputs(i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.3, i64 0, i64 0), i32 %93)
  %95 = load i32, i32* @child_pid, align 4
  %96 = load i32, i32* @SIGKILL, align 4
  %97 = call i32 @kill(i32 %95, i32 %96)
  store i32 -1, i32* %3, align 4
  br label %131

98:                                               ; preds = %88
  %99 = call %struct.TYPE_9__* (...) @initMessenger()
  store %struct.TYPE_9__* %99, %struct.TYPE_9__** @m, align 8
  %100 = load i32, i32* @parent_id, align 4
  %101 = load i32, i32* @crypto_box_PUBLICKEYBYTES, align 4
  %102 = load i32, i32* @MS_SYNC, align 4
  %103 = call i32 @msync(i32 %100, i32 %101, i32 %102)
  %104 = load %struct.TYPE_9__*, %struct.TYPE_9__** @m, align 8
  %105 = load i32, i32* @parent_confirm_status, align 4
  %106 = call i32 @m_callback_statusmessage(%struct.TYPE_9__* %104, i32 %105, i32* null)
  %107 = load %struct.TYPE_9__*, %struct.TYPE_9__** @m, align 8
  %108 = load i32, i32* @parent_confirm_message, align 4
  %109 = call i32 @m_callback_friendmessage(%struct.TYPE_9__* %107, i32 %108, i32* null)
  %110 = call i32 @c_sleep(i32 50)
  %111 = load %struct.TYPE_9__*, %struct.TYPE_9__** @m, align 8
  %112 = load i32, i32* @parent_id, align 4
  %113 = call i32 @Messenger_save(%struct.TYPE_9__* %111, i32 %112)
  %114 = load %struct.TYPE_9__*, %struct.TYPE_9__** @m, align 8
  %115 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %114, i32 0, i32 0
  %116 = load i32, i32* %115, align 4
  %117 = call i32 @parent_friend_request(i32 %116)
  %118 = icmp eq i32 %117, -1
  br i1 %118, label %119, label %120

119:                                              ; preds = %98
  store i32 -1, i32* %3, align 4
  br label %131

120:                                              ; preds = %98
  %121 = load %struct.TYPE_9__*, %struct.TYPE_9__** @m, align 8
  %122 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %121, i32 0, i32 0
  %123 = load i32, i32* %122, align 4
  %124 = call i32 @parent_wait_for_message(i32 %123)
  %125 = icmp eq i32 %124, -1
  br i1 %125, label %126, label %127

126:                                              ; preds = %120
  store i32 -1, i32* %3, align 4
  br label %131

127:                                              ; preds = %120
  %128 = call i32 @wait(i32* null)
  %129 = load i32, i32* @stdout, align 4
  %130 = call i32 @fputs(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.4, i64 0, i64 0), i32 %129)
  store i32 0, i32* %3, align 4
  br label %131

131:                                              ; preds = %127, %126, %119, %92, %85
  %132 = load i32, i32* %3, align 4
  ret i32 %132
}

declare dso_local i32 @puts(i8*) #1

declare dso_local i32 @mmap(i32*, i32, i32, i32, i32, i32) #1

declare dso_local i32 @fputs(i8*, i32) #1

declare dso_local i32 @fork(...) #1

declare dso_local %struct.TYPE_9__* @initMessenger(...) #1

declare dso_local i32 @Messenger_save(%struct.TYPE_9__*, i32) #1

declare dso_local i32 @msync(i32, i32, i32) #1

declare dso_local i32 @m_callback_friendrequest(%struct.TYPE_9__*, i32, i32*) #1

declare dso_local i32 @m_callback_statusmessage(%struct.TYPE_9__*, i32, i32*) #1

declare dso_local i32 @do_tox(i32) #1

declare dso_local i32 @m_sendmessage(%struct.TYPE_9__*, i32, i32*, i32) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i32 @cleanupMessenger(%struct.TYPE_9__*) #1

declare dso_local i64 @atexit(i32) #1

declare dso_local i32 @kill(i32, i32) #1

declare dso_local i32 @m_callback_friendmessage(%struct.TYPE_9__*, i32, i32*) #1

declare dso_local i32 @c_sleep(i32) #1

declare dso_local i32 @parent_friend_request(i32) #1

declare dso_local i32 @parent_wait_for_message(i32) #1

declare dso_local i32 @wait(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
