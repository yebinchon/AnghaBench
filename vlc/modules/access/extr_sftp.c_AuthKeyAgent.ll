; ModuleID = '/home/carl/AnghaBench/vlc/modules/access/extr_sftp.c_AuthKeyAgent.c'
source_filename = "/home/carl/AnghaBench/vlc/modules/access/extr_sftp.c_AuthKeyAgent.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { %struct.TYPE_7__* }
%struct.TYPE_7__ = type { i32 }
%struct.libssh2_agent_publickey = type { i32 }

@VLC_EGENERIC = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [31 x i8] c"Failed to initialize key agent\00", align 1
@.str.1 = private unnamed_addr constant [28 x i8] c"Failed to connect key agent\00", align 1
@.str.2 = private unnamed_addr constant [29 x i8] c"Failed to request identities\00", align 1
@.str.3 = private unnamed_addr constant [13 x i8] c"Using key %s\00", align 1
@.str.4 = private unnamed_addr constant [42 x i8] c"Public key agent authentication succeeded\00", align 1
@VLC_SUCCESS = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [39 x i8] c"Public key agent authentication failed\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_6__*, i8*)* @AuthKeyAgent to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @AuthKeyAgent(%struct.TYPE_6__* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_6__*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.TYPE_7__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca %struct.libssh2_agent_publickey*, align 8
  %10 = alloca %struct.libssh2_agent_publickey*, align 8
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %4, align 8
  store i8* %1, i8** %5, align 8
  %11 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %12 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %11, i32 0, i32 0
  %13 = load %struct.TYPE_7__*, %struct.TYPE_7__** %12, align 8
  store %struct.TYPE_7__* %13, %struct.TYPE_7__** %6, align 8
  %14 = load i32, i32* @VLC_EGENERIC, align 4
  store i32 %14, i32* %7, align 4
  store i32* null, i32** %8, align 8
  store %struct.libssh2_agent_publickey* null, %struct.libssh2_agent_publickey** %9, align 8
  store %struct.libssh2_agent_publickey* null, %struct.libssh2_agent_publickey** %10, align 8
  %15 = load i8*, i8** %5, align 8
  %16 = icmp ne i8* %15, null
  br i1 %16, label %17, label %22

17:                                               ; preds = %2
  %18 = load i8*, i8** %5, align 8
  %19 = getelementptr inbounds i8, i8* %18, i64 0
  %20 = load i8, i8* %19, align 1
  %21 = icmp ne i8 %20, 0
  br i1 %21, label %24, label %22

22:                                               ; preds = %17, %2
  %23 = load i32, i32* %7, align 4
  store i32 %23, i32* %3, align 4
  br label %84

24:                                               ; preds = %17
  %25 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %26 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = call i32* @libssh2_agent_init(i32 %27)
  store i32* %28, i32** %8, align 8
  %29 = load i32*, i32** %8, align 8
  %30 = icmp ne i32* %29, null
  br i1 %30, label %34, label %31

31:                                               ; preds = %24
  %32 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %33 = call i32 (%struct.TYPE_6__*, i8*, ...) @msg_Dbg(%struct.TYPE_6__* %32, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0))
  br label %74

34:                                               ; preds = %24
  %35 = load i32*, i32** %8, align 8
  %36 = call i64 @libssh2_agent_connect(i32* %35)
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %41

38:                                               ; preds = %34
  %39 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %40 = call i32 (%struct.TYPE_6__*, i8*, ...) @msg_Dbg(%struct.TYPE_6__* %39, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0))
  br label %74

41:                                               ; preds = %34
  %42 = load i32*, i32** %8, align 8
  %43 = call i64 @libssh2_agent_list_identities(i32* %42)
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %48

45:                                               ; preds = %41
  %46 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %47 = call i32 (%struct.TYPE_6__*, i8*, ...) @msg_Dbg(%struct.TYPE_6__* %46, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.2, i64 0, i64 0))
  br label %74

48:                                               ; preds = %41
  br label %49

49:                                               ; preds = %69, %48
  %50 = load i32*, i32** %8, align 8
  %51 = load %struct.libssh2_agent_publickey*, %struct.libssh2_agent_publickey** %10, align 8
  %52 = call i64 @libssh2_agent_get_identity(i32* %50, %struct.libssh2_agent_publickey** %9, %struct.libssh2_agent_publickey* %51)
  %53 = icmp eq i64 %52, 0
  br i1 %53, label %54, label %73

54:                                               ; preds = %49
  %55 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %56 = load %struct.libssh2_agent_publickey*, %struct.libssh2_agent_publickey** %9, align 8
  %57 = getelementptr inbounds %struct.libssh2_agent_publickey, %struct.libssh2_agent_publickey* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  %59 = call i32 (%struct.TYPE_6__*, i8*, ...) @msg_Dbg(%struct.TYPE_6__* %55, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.3, i64 0, i64 0), i32 %58)
  %60 = load i32*, i32** %8, align 8
  %61 = load i8*, i8** %5, align 8
  %62 = load %struct.libssh2_agent_publickey*, %struct.libssh2_agent_publickey** %9, align 8
  %63 = call i64 @libssh2_agent_userauth(i32* %60, i8* %61, %struct.libssh2_agent_publickey* %62)
  %64 = icmp eq i64 %63, 0
  br i1 %64, label %65, label %69

65:                                               ; preds = %54
  %66 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %67 = call i32 @msg_Info(%struct.TYPE_6__* %66, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.4, i64 0, i64 0))
  %68 = load i32, i32* @VLC_SUCCESS, align 4
  store i32 %68, i32* %7, align 4
  br label %74

69:                                               ; preds = %54
  %70 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %71 = call i32 (%struct.TYPE_6__*, i8*, ...) @msg_Dbg(%struct.TYPE_6__* %70, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.5, i64 0, i64 0))
  %72 = load %struct.libssh2_agent_publickey*, %struct.libssh2_agent_publickey** %9, align 8
  store %struct.libssh2_agent_publickey* %72, %struct.libssh2_agent_publickey** %10, align 8
  br label %49

73:                                               ; preds = %49
  br label %74

74:                                               ; preds = %73, %65, %45, %38, %31
  %75 = load i32*, i32** %8, align 8
  %76 = icmp ne i32* %75, null
  br i1 %76, label %77, label %82

77:                                               ; preds = %74
  %78 = load i32*, i32** %8, align 8
  %79 = call i32 @libssh2_agent_disconnect(i32* %78)
  %80 = load i32*, i32** %8, align 8
  %81 = call i32 @libssh2_agent_free(i32* %80)
  br label %82

82:                                               ; preds = %77, %74
  %83 = load i32, i32* %7, align 4
  store i32 %83, i32* %3, align 4
  br label %84

84:                                               ; preds = %82, %22
  %85 = load i32, i32* %3, align 4
  ret i32 %85
}

declare dso_local i32* @libssh2_agent_init(i32) #1

declare dso_local i32 @msg_Dbg(%struct.TYPE_6__*, i8*, ...) #1

declare dso_local i64 @libssh2_agent_connect(i32*) #1

declare dso_local i64 @libssh2_agent_list_identities(i32*) #1

declare dso_local i64 @libssh2_agent_get_identity(i32*, %struct.libssh2_agent_publickey**, %struct.libssh2_agent_publickey*) #1

declare dso_local i64 @libssh2_agent_userauth(i32*, i8*, %struct.libssh2_agent_publickey*) #1

declare dso_local i32 @msg_Info(%struct.TYPE_6__*, i8*) #1

declare dso_local i32 @libssh2_agent_disconnect(i32*) #1

declare dso_local i32 @libssh2_agent_free(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
