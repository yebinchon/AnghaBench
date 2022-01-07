; ModuleID = '/home/carl/AnghaBench/vlc/modules/access/extr_udp.c_Open.c'
source_filename = "/home/carl/AnghaBench/vlc/modules/access/extr_udp.c_Open.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32, i32*, i32, i32*, i32, %struct.TYPE_9__*, i64 }
%struct.TYPE_9__ = type { i32, i32, i64 }

@VLC_EGENERIC = common dso_local global i32 0, align 4
@VLC_ENOMEM = common dso_local global i32 0, align 4
@Read = common dso_local global i32 0, align 4
@Control = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.1 = private unnamed_addr constant [33 x i8] c"opening server=%s:%d local=%s:%d\00", align 1
@IPPROTO_UDP = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [19 x i8] c"cannot open socket\00", align 1
@.str.3 = private unnamed_addr constant [12 x i8] c"udp-timeout\00", align 1
@VLC_SUCCESS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*)* @Open to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @Open(i32* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32*, align 8
  %4 = alloca %struct.TYPE_8__*, align 8
  %5 = alloca %struct.TYPE_9__*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store i32* %0, i32** %3, align 8
  %12 = load i32*, i32** %3, align 8
  %13 = bitcast i32* %12 to %struct.TYPE_8__*
  store %struct.TYPE_8__* %13, %struct.TYPE_8__** %4, align 8
  %14 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %15 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %14, i32 0, i32 6
  %16 = load i64, i64* %15, align 8
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %20

18:                                               ; preds = %1
  %19 = load i32, i32* @VLC_EGENERIC, align 4
  store i32 %19, i32* %2, align 4
  br label %158

20:                                               ; preds = %1
  %21 = load i32*, i32** %3, align 8
  %22 = call %struct.TYPE_9__* @vlc_obj_malloc(i32* %21, i32 16)
  store %struct.TYPE_9__* %22, %struct.TYPE_9__** %5, align 8
  %23 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %24 = icmp eq %struct.TYPE_9__* %23, null
  %25 = zext i1 %24 to i32
  %26 = call i64 @unlikely(i32 %25)
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %30

28:                                               ; preds = %20
  %29 = load i32, i32* @VLC_ENOMEM, align 4
  store i32 %29, i32* %2, align 4
  br label %158

30:                                               ; preds = %20
  %31 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %32 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %31, i32 0, i32 2
  store i64 0, i64* %32, align 8
  %33 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %34 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %35 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %34, i32 0, i32 5
  store %struct.TYPE_9__* %33, %struct.TYPE_9__** %35, align 8
  %36 = load i32, i32* @Read, align 4
  %37 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %38 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %37, i32 0, i32 4
  store i32 %36, i32* %38, align 8
  %39 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %40 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %39, i32 0, i32 3
  store i32* null, i32** %40, align 8
  %41 = load i32, i32* @Control, align 4
  %42 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %43 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %42, i32 0, i32 2
  store i32 %41, i32* %43, align 8
  %44 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %45 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %44, i32 0, i32 1
  store i32* null, i32** %45, align 8
  %46 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %47 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 8
  %49 = call i8* @strdup(i32 %48)
  store i8* %49, i8** %6, align 8
  store i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0), i8** %9, align 8
  store i32 1234, i32* %10, align 4
  store i32 0, i32* %11, align 4
  %50 = load i8*, i8** %6, align 8
  %51 = icmp eq i8* %50, null
  %52 = zext i1 %51 to i32
  %53 = call i64 @unlikely(i32 %52)
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %55, label %57

55:                                               ; preds = %30
  %56 = load i32, i32* @VLC_ENOMEM, align 4
  store i32 %56, i32* %2, align 4
  br label %158

57:                                               ; preds = %30
  %58 = load i8*, i8** %6, align 8
  %59 = call i8* @strchr(i8* %58, i8 signext 64)
  store i8* %59, i8** %7, align 8
  %60 = load i8*, i8** %7, align 8
  %61 = icmp ne i8* %60, null
  br i1 %61, label %62, label %89

62:                                               ; preds = %57
  %63 = load i8*, i8** %7, align 8
  %64 = getelementptr inbounds i8, i8* %63, i32 1
  store i8* %64, i8** %7, align 8
  store i8 0, i8* %63, align 1
  %65 = load i8*, i8** %7, align 8
  store i8* %65, i8** %9, align 8
  %66 = load i8*, i8** %9, align 8
  %67 = getelementptr inbounds i8, i8* %66, i64 0
  %68 = load i8, i8* %67, align 1
  %69 = sext i8 %68 to i32
  %70 = icmp eq i32 %69, 91
  br i1 %70, label %71, label %74

71:                                               ; preds = %62
  %72 = load i8*, i8** %7, align 8
  %73 = call i8* @strchr(i8* %72, i8 signext 93)
  store i8* %73, i8** %7, align 8
  br label %74

74:                                               ; preds = %71, %62
  %75 = load i8*, i8** %7, align 8
  %76 = icmp ne i8* %75, null
  br i1 %76, label %77, label %88

77:                                               ; preds = %74
  %78 = load i8*, i8** %7, align 8
  %79 = call i8* @strchr(i8* %78, i8 signext 58)
  store i8* %79, i8** %7, align 8
  %80 = load i8*, i8** %7, align 8
  %81 = icmp ne i8* %80, null
  br i1 %81, label %82, label %87

82:                                               ; preds = %77
  %83 = load i8*, i8** %7, align 8
  %84 = getelementptr inbounds i8, i8* %83, i32 1
  store i8* %84, i8** %7, align 8
  store i8 0, i8* %83, align 1
  %85 = load i8*, i8** %7, align 8
  %86 = call i32 @atoi(i8* %85)
  store i32 %86, i32* %10, align 4
  br label %87

87:                                               ; preds = %82, %77
  br label %88

88:                                               ; preds = %87, %74
  br label %89

89:                                               ; preds = %88, %57
  %90 = load i8*, i8** %6, align 8
  store i8* %90, i8** %8, align 8
  %91 = load i8*, i8** %8, align 8
  %92 = getelementptr inbounds i8, i8* %91, i64 0
  %93 = load i8, i8* %92, align 1
  %94 = sext i8 %93 to i32
  %95 = icmp eq i32 %94, 91
  br i1 %95, label %96, label %99

96:                                               ; preds = %89
  %97 = load i8*, i8** %6, align 8
  %98 = call i8* @strchr(i8* %97, i8 signext 93)
  br label %101

99:                                               ; preds = %89
  %100 = load i8*, i8** %6, align 8
  br label %101

101:                                              ; preds = %99, %96
  %102 = phi i8* [ %98, %96 ], [ %100, %99 ]
  store i8* %102, i8** %7, align 8
  %103 = load i8*, i8** %7, align 8
  %104 = icmp ne i8* %103, null
  br i1 %104, label %105, label %116

105:                                              ; preds = %101
  %106 = load i8*, i8** %7, align 8
  %107 = call i8* @strchr(i8* %106, i8 signext 58)
  store i8* %107, i8** %7, align 8
  %108 = load i8*, i8** %7, align 8
  %109 = icmp ne i8* %108, null
  br i1 %109, label %110, label %115

110:                                              ; preds = %105
  %111 = load i8*, i8** %7, align 8
  %112 = getelementptr inbounds i8, i8* %111, i32 1
  store i8* %112, i8** %7, align 8
  store i8 0, i8* %111, align 1
  %113 = load i8*, i8** %7, align 8
  %114 = call i32 @atoi(i8* %113)
  store i32 %114, i32* %11, align 4
  br label %115

115:                                              ; preds = %110, %105
  br label %116

116:                                              ; preds = %115, %101
  %117 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %118 = load i8*, i8** %8, align 8
  %119 = load i32, i32* %11, align 4
  %120 = load i8*, i8** %9, align 8
  %121 = load i32, i32* %10, align 4
  %122 = call i32 @msg_Dbg(%struct.TYPE_8__* %117, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.1, i64 0, i64 0), i8* %118, i32 %119, i8* %120, i32 %121)
  %123 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %124 = load i8*, i8** %9, align 8
  %125 = load i32, i32* %10, align 4
  %126 = load i8*, i8** %8, align 8
  %127 = load i32, i32* %11, align 4
  %128 = load i32, i32* @IPPROTO_UDP, align 4
  %129 = call i32 @net_OpenDgram(%struct.TYPE_8__* %123, i8* %124, i32 %125, i8* %126, i32 %127, i32 %128)
  %130 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %131 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %130, i32 0, i32 0
  store i32 %129, i32* %131, align 8
  %132 = load i8*, i8** %6, align 8
  %133 = call i32 @free(i8* %132)
  %134 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %135 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %134, i32 0, i32 0
  %136 = load i32, i32* %135, align 8
  %137 = icmp eq i32 %136, -1
  br i1 %137, label %138, label %142

138:                                              ; preds = %116
  %139 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %140 = call i32 @msg_Err(%struct.TYPE_8__* %139, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.2, i64 0, i64 0))
  %141 = load i32, i32* @VLC_EGENERIC, align 4
  store i32 %141, i32* %2, align 4
  br label %158

142:                                              ; preds = %116
  %143 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %144 = call i32 @var_InheritInteger(%struct.TYPE_8__* %143, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.3, i64 0, i64 0))
  %145 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %146 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %145, i32 0, i32 1
  store i32 %144, i32* %146, align 4
  %147 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %148 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %147, i32 0, i32 1
  %149 = load i32, i32* %148, align 4
  %150 = icmp sgt i32 %149, 0
  br i1 %150, label %151, label %156

151:                                              ; preds = %142
  %152 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %153 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %152, i32 0, i32 1
  %154 = load i32, i32* %153, align 4
  %155 = mul nsw i32 %154, 1000
  store i32 %155, i32* %153, align 4
  br label %156

156:                                              ; preds = %151, %142
  %157 = load i32, i32* @VLC_SUCCESS, align 4
  store i32 %157, i32* %2, align 4
  br label %158

158:                                              ; preds = %156, %138, %55, %28, %18
  %159 = load i32, i32* %2, align 4
  ret i32 %159
}

declare dso_local %struct.TYPE_9__* @vlc_obj_malloc(i32*, i32) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i8* @strdup(i32) #1

declare dso_local i8* @strchr(i8*, i8 signext) #1

declare dso_local i32 @atoi(i8*) #1

declare dso_local i32 @msg_Dbg(%struct.TYPE_8__*, i8*, i8*, i32, i8*, i32) #1

declare dso_local i32 @net_OpenDgram(%struct.TYPE_8__*, i8*, i32, i8*, i32, i32) #1

declare dso_local i32 @free(i8*) #1

declare dso_local i32 @msg_Err(%struct.TYPE_8__*, i8*) #1

declare dso_local i32 @var_InheritInteger(%struct.TYPE_8__*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
