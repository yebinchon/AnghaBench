; ModuleID = '/home/carl/AnghaBench/tmux/extr_client.c_client_dispatch_attached.c'
source_filename = "/home/carl/AnghaBench/tmux/extr_client.c_client_dispatch_attached.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.imsg = type { i8*, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64, i32 }
%struct.sigaction = type { i32, i32, i32 }

@IMSG_HEADER_SIZE = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [22 x i8] c"bad MSG_DETACH string\00", align 1
@client_exitsession = common dso_local global i8* null, align 8
@client_exittype = common dso_local global i32 0, align 4
@CLIENT_EXIT_DETACHED_HUP = common dso_local global i32 0, align 4
@client_exitreason = common dso_local global i32 0, align 4
@CLIENT_EXIT_DETACHED = common dso_local global i32 0, align 4
@client_peer = common dso_local global i32 0, align 4
@MSG_EXITING = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [20 x i8] c"bad MSG_EXEC string\00", align 1
@client_execcmd = common dso_local global i8* null, align 8
@client_execshell = common dso_local global i8* null, align 8
@.str.2 = private unnamed_addr constant [18 x i8] c"bad MSG_EXIT size\00", align 1
@CLIENT_EXIT_EXITED = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [20 x i8] c"bad MSG_EXITED size\00", align 1
@client_proc = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [22 x i8] c"bad MSG_SHUTDOWN size\00", align 1
@CLIENT_EXIT_SERVER_EXITED = common dso_local global i32 0, align 4
@client_exitval = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [21 x i8] c"bad MSG_SUSPEND size\00", align 1
@SA_RESTART = common dso_local global i32 0, align 4
@SIG_DFL = common dso_local global i32 0, align 4
@SIGTSTP = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [17 x i8] c"sigaction failed\00", align 1
@.str.7 = private unnamed_addr constant [20 x i8] c"bad MSG_LOCK string\00", align 1
@MSG_UNLOCK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.imsg*)* @client_dispatch_attached to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @client_dispatch_attached(%struct.imsg* %0) #0 {
  %2 = alloca %struct.imsg*, align 8
  %3 = alloca %struct.sigaction, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i64, align 8
  store %struct.imsg* %0, %struct.imsg** %2, align 8
  %6 = load %struct.imsg*, %struct.imsg** %2, align 8
  %7 = getelementptr inbounds %struct.imsg, %struct.imsg* %6, i32 0, i32 0
  %8 = load i8*, i8** %7, align 8
  store i8* %8, i8** %4, align 8
  %9 = load %struct.imsg*, %struct.imsg** %2, align 8
  %10 = getelementptr inbounds %struct.imsg, %struct.imsg* %9, i32 0, i32 1
  %11 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = load i64, i64* @IMSG_HEADER_SIZE, align 8
  %14 = sub i64 %12, %13
  store i64 %14, i64* %5, align 8
  %15 = load %struct.imsg*, %struct.imsg** %2, align 8
  %16 = getelementptr inbounds %struct.imsg, %struct.imsg* %15, i32 0, i32 1
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 8
  switch i32 %18, label %161 [
    i32 135, label %19
    i32 134, label %19
    i32 133, label %52
    i32 132, label %89
    i32 131, label %102
    i32 129, label %110
    i32 128, label %120
    i32 130, label %142
  ]

19:                                               ; preds = %1, %1
  %20 = load i64, i64* %5, align 8
  %21 = icmp eq i64 %20, 0
  br i1 %21, label %30, label %22

22:                                               ; preds = %19
  %23 = load i8*, i8** %4, align 8
  %24 = load i64, i64* %5, align 8
  %25 = sub i64 %24, 1
  %26 = getelementptr inbounds i8, i8* %23, i64 %25
  %27 = load i8, i8* %26, align 1
  %28 = sext i8 %27 to i32
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %32

30:                                               ; preds = %22, %19
  %31 = call i32 @fatalx(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0))
  br label %32

32:                                               ; preds = %30, %22
  %33 = load i8*, i8** %4, align 8
  %34 = call i8* @xstrdup(i8* %33)
  store i8* %34, i8** @client_exitsession, align 8
  %35 = load %struct.imsg*, %struct.imsg** %2, align 8
  %36 = getelementptr inbounds %struct.imsg, %struct.imsg* %35, i32 0, i32 1
  %37 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 8
  store i32 %38, i32* @client_exittype, align 4
  %39 = load %struct.imsg*, %struct.imsg** %2, align 8
  %40 = getelementptr inbounds %struct.imsg, %struct.imsg* %39, i32 0, i32 1
  %41 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 8
  %43 = icmp eq i32 %42, 134
  br i1 %43, label %44, label %46

44:                                               ; preds = %32
  %45 = load i32, i32* @CLIENT_EXIT_DETACHED_HUP, align 4
  store i32 %45, i32* @client_exitreason, align 4
  br label %48

46:                                               ; preds = %32
  %47 = load i32, i32* @CLIENT_EXIT_DETACHED, align 4
  store i32 %47, i32* @client_exitreason, align 4
  br label %48

48:                                               ; preds = %46, %44
  %49 = load i32, i32* @client_peer, align 4
  %50 = load i32, i32* @MSG_EXITING, align 4
  %51 = call i32 @proc_send(i32 %49, i32 %50, i32 -1, i32* null, i32 0)
  br label %161

52:                                               ; preds = %1
  %53 = load i64, i64* %5, align 8
  %54 = icmp eq i64 %53, 0
  br i1 %54, label %70, label %55

55:                                               ; preds = %52
  %56 = load i8*, i8** %4, align 8
  %57 = load i64, i64* %5, align 8
  %58 = sub i64 %57, 1
  %59 = getelementptr inbounds i8, i8* %56, i64 %58
  %60 = load i8, i8* %59, align 1
  %61 = sext i8 %60 to i32
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %70, label %63

63:                                               ; preds = %55
  %64 = load i8*, i8** %4, align 8
  %65 = call i32 @strlen(i8* %64)
  %66 = add nsw i32 %65, 1
  %67 = sext i32 %66 to i64
  %68 = load i64, i64* %5, align 8
  %69 = icmp eq i64 %67, %68
  br i1 %69, label %70, label %72

70:                                               ; preds = %63, %55, %52
  %71 = call i32 @fatalx(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i64 0, i64 0))
  br label %72

72:                                               ; preds = %70, %63
  %73 = load i8*, i8** %4, align 8
  %74 = call i8* @xstrdup(i8* %73)
  store i8* %74, i8** @client_execcmd, align 8
  %75 = load i8*, i8** %4, align 8
  %76 = load i8*, i8** %4, align 8
  %77 = call i32 @strlen(i8* %76)
  %78 = sext i32 %77 to i64
  %79 = getelementptr inbounds i8, i8* %75, i64 %78
  %80 = getelementptr inbounds i8, i8* %79, i64 1
  %81 = call i8* @xstrdup(i8* %80)
  store i8* %81, i8** @client_execshell, align 8
  %82 = load %struct.imsg*, %struct.imsg** %2, align 8
  %83 = getelementptr inbounds %struct.imsg, %struct.imsg* %82, i32 0, i32 1
  %84 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %83, i32 0, i32 1
  %85 = load i32, i32* %84, align 8
  store i32 %85, i32* @client_exittype, align 4
  %86 = load i32, i32* @client_peer, align 4
  %87 = load i32, i32* @MSG_EXITING, align 4
  %88 = call i32 @proc_send(i32 %86, i32 %87, i32 -1, i32* null, i32 0)
  br label %161

89:                                               ; preds = %1
  %90 = load i64, i64* %5, align 8
  %91 = icmp ne i64 %90, 0
  br i1 %91, label %92, label %97

92:                                               ; preds = %89
  %93 = load i64, i64* %5, align 8
  %94 = icmp ne i64 %93, 4
  br i1 %94, label %95, label %97

95:                                               ; preds = %92
  %96 = call i32 @fatalx(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.2, i64 0, i64 0))
  br label %97

97:                                               ; preds = %95, %92, %89
  %98 = load i32, i32* @client_peer, align 4
  %99 = load i32, i32* @MSG_EXITING, align 4
  %100 = call i32 @proc_send(i32 %98, i32 %99, i32 -1, i32* null, i32 0)
  %101 = load i32, i32* @CLIENT_EXIT_EXITED, align 4
  store i32 %101, i32* @client_exitreason, align 4
  br label %161

102:                                              ; preds = %1
  %103 = load i64, i64* %5, align 8
  %104 = icmp ne i64 %103, 0
  br i1 %104, label %105, label %107

105:                                              ; preds = %102
  %106 = call i32 @fatalx(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.3, i64 0, i64 0))
  br label %107

107:                                              ; preds = %105, %102
  %108 = load i32, i32* @client_proc, align 4
  %109 = call i32 @proc_exit(i32 %108)
  br label %161

110:                                              ; preds = %1
  %111 = load i64, i64* %5, align 8
  %112 = icmp ne i64 %111, 0
  br i1 %112, label %113, label %115

113:                                              ; preds = %110
  %114 = call i32 @fatalx(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.4, i64 0, i64 0))
  br label %115

115:                                              ; preds = %113, %110
  %116 = load i32, i32* @client_peer, align 4
  %117 = load i32, i32* @MSG_EXITING, align 4
  %118 = call i32 @proc_send(i32 %116, i32 %117, i32 -1, i32* null, i32 0)
  %119 = load i32, i32* @CLIENT_EXIT_SERVER_EXITED, align 4
  store i32 %119, i32* @client_exitreason, align 4
  store i32 1, i32* @client_exitval, align 4
  br label %161

120:                                              ; preds = %1
  %121 = load i64, i64* %5, align 8
  %122 = icmp ne i64 %121, 0
  br i1 %122, label %123, label %125

123:                                              ; preds = %120
  %124 = call i32 @fatalx(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.5, i64 0, i64 0))
  br label %125

125:                                              ; preds = %123, %120
  %126 = call i32 @memset(%struct.sigaction* %3, i32 0, i32 12)
  %127 = getelementptr inbounds %struct.sigaction, %struct.sigaction* %3, i32 0, i32 2
  %128 = call i32 @sigemptyset(i32* %127)
  %129 = load i32, i32* @SA_RESTART, align 4
  %130 = getelementptr inbounds %struct.sigaction, %struct.sigaction* %3, i32 0, i32 1
  store i32 %129, i32* %130, align 4
  %131 = load i32, i32* @SIG_DFL, align 4
  %132 = getelementptr inbounds %struct.sigaction, %struct.sigaction* %3, i32 0, i32 0
  store i32 %131, i32* %132, align 4
  %133 = load i32, i32* @SIGTSTP, align 4
  %134 = call i32 @sigaction(i32 %133, %struct.sigaction* %3, i32* null)
  %135 = icmp ne i32 %134, 0
  br i1 %135, label %136, label %138

136:                                              ; preds = %125
  %137 = call i32 @fatal(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.6, i64 0, i64 0))
  br label %138

138:                                              ; preds = %136, %125
  %139 = call i32 (...) @getpid()
  %140 = load i32, i32* @SIGTSTP, align 4
  %141 = call i32 @kill(i32 %139, i32 %140)
  br label %161

142:                                              ; preds = %1
  %143 = load i64, i64* %5, align 8
  %144 = icmp eq i64 %143, 0
  br i1 %144, label %153, label %145

145:                                              ; preds = %142
  %146 = load i8*, i8** %4, align 8
  %147 = load i64, i64* %5, align 8
  %148 = sub i64 %147, 1
  %149 = getelementptr inbounds i8, i8* %146, i64 %148
  %150 = load i8, i8* %149, align 1
  %151 = sext i8 %150 to i32
  %152 = icmp ne i32 %151, 0
  br i1 %152, label %153, label %155

153:                                              ; preds = %145, %142
  %154 = call i32 @fatalx(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.7, i64 0, i64 0))
  br label %155

155:                                              ; preds = %153, %145
  %156 = load i8*, i8** %4, align 8
  %157 = call i32 @system(i8* %156)
  %158 = load i32, i32* @client_peer, align 4
  %159 = load i32, i32* @MSG_UNLOCK, align 4
  %160 = call i32 @proc_send(i32 %158, i32 %159, i32 -1, i32* null, i32 0)
  br label %161

161:                                              ; preds = %1, %155, %138, %115, %107, %97, %72, %48
  ret void
}

declare dso_local i32 @fatalx(i8*) #1

declare dso_local i8* @xstrdup(i8*) #1

declare dso_local i32 @proc_send(i32, i32, i32, i32*, i32) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i32 @proc_exit(i32) #1

declare dso_local i32 @memset(%struct.sigaction*, i32, i32) #1

declare dso_local i32 @sigemptyset(i32*) #1

declare dso_local i32 @sigaction(i32, %struct.sigaction*, i32*) #1

declare dso_local i32 @fatal(i8*) #1

declare dso_local i32 @kill(i32, i32) #1

declare dso_local i32 @getpid(...) #1

declare dso_local i32 @system(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
