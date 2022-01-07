; ModuleID = '/home/carl/AnghaBench/vlc/modules/access/extr_sftp.c_AuthPublicKey.c'
source_filename = "/home/carl/AnghaBench/vlc/modules/access/extr_sftp.c_AuthPublicKey.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { %struct.TYPE_7__* }
%struct.TYPE_7__ = type { i32 }

@VLC_EGENERIC = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [19 x i8] c"%s/.ssh/id_rsa.pub\00", align 1
@.str.1 = private unnamed_addr constant [15 x i8] c"%s/.ssh/id_rsa\00", align 1
@.str.2 = private unnamed_addr constant [33 x i8] c"Public key authentication failed\00", align 1
@.str.3 = private unnamed_addr constant [36 x i8] c"Public key authentication succeeded\00", align 1
@VLC_SUCCESS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_6__*, i8*, i8*)* @AuthPublicKey to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @AuthPublicKey(%struct.TYPE_6__* %0, i8* %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_6__*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.TYPE_7__*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %5, align 8
  store i8* %1, i8** %6, align 8
  store i8* %2, i8** %7, align 8
  %12 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %13 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %12, i32 0, i32 0
  %14 = load %struct.TYPE_7__*, %struct.TYPE_7__** %13, align 8
  store %struct.TYPE_7__* %14, %struct.TYPE_7__** %8, align 8
  %15 = load i32, i32* @VLC_EGENERIC, align 4
  store i32 %15, i32* %9, align 4
  store i8* null, i8** %10, align 8
  store i8* null, i8** %11, align 8
  %16 = load i8*, i8** %7, align 8
  %17 = icmp ne i8* %16, null
  br i1 %17, label %18, label %23

18:                                               ; preds = %3
  %19 = load i8*, i8** %7, align 8
  %20 = getelementptr inbounds i8, i8* %19, i64 0
  %21 = load i8, i8* %20, align 1
  %22 = icmp ne i8 %21, 0
  br i1 %22, label %25, label %23

23:                                               ; preds = %18, %3
  %24 = load i32, i32* %9, align 4
  store i32 %24, i32* %4, align 4
  br label %56

25:                                               ; preds = %18
  %26 = load i8*, i8** %6, align 8
  %27 = call i32 @asprintf(i8** %10, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i8* %26)
  %28 = icmp eq i32 %27, -1
  br i1 %28, label %33, label %29

29:                                               ; preds = %25
  %30 = load i8*, i8** %6, align 8
  %31 = call i32 @asprintf(i8** %11, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i64 0, i64 0), i8* %30)
  %32 = icmp eq i32 %31, -1
  br i1 %32, label %33, label %34

33:                                               ; preds = %29, %25
  br label %50

34:                                               ; preds = %29
  %35 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %36 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = load i8*, i8** %7, align 8
  %39 = load i8*, i8** %10, align 8
  %40 = load i8*, i8** %11, align 8
  %41 = call i64 @libssh2_userauth_publickey_fromfile(i32 %37, i8* %38, i8* %39, i8* %40, i32* null)
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %46

43:                                               ; preds = %34
  %44 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %45 = call i32 @msg_Dbg(%struct.TYPE_6__* %44, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.2, i64 0, i64 0))
  br label %50

46:                                               ; preds = %34
  %47 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %48 = call i32 @msg_Info(%struct.TYPE_6__* %47, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.3, i64 0, i64 0))
  %49 = load i32, i32* @VLC_SUCCESS, align 4
  store i32 %49, i32* %9, align 4
  br label %50

50:                                               ; preds = %46, %43, %33
  %51 = load i8*, i8** %10, align 8
  %52 = call i32 @free(i8* %51)
  %53 = load i8*, i8** %11, align 8
  %54 = call i32 @free(i8* %53)
  %55 = load i32, i32* %9, align 4
  store i32 %55, i32* %4, align 4
  br label %56

56:                                               ; preds = %50, %23
  %57 = load i32, i32* %4, align 4
  ret i32 %57
}

declare dso_local i32 @asprintf(i8**, i8*, i8*) #1

declare dso_local i64 @libssh2_userauth_publickey_fromfile(i32, i8*, i8*, i8*, i32*) #1

declare dso_local i32 @msg_Dbg(%struct.TYPE_6__*, i8*) #1

declare dso_local i32 @msg_Info(%struct.TYPE_6__*, i8*) #1

declare dso_local i32 @free(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
