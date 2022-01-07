; ModuleID = '/home/carl/AnghaBench/toxcore/toxcore/extr_Messenger.c_messenger_load_state_callback.c'
source_filename = "/home/carl/AnghaBench/toxcore/toxcore/extr_Messenger.c_messenger_load_state_callback.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i32, i32, %struct.TYPE_9__*, i32, %struct.TYPE_11__*, i32 }
%struct.TYPE_9__ = type { i32, i32 }
%struct.TYPE_11__ = type { i32 }

@crypto_box_PUBLICKEYBYTES = common dso_local global i64 0, align 8
@crypto_box_SECRETKEYBYTES = common dso_local global i64 0, align 8
@MAX_NAME_LENGTH = common dso_local global i32 0, align 4
@MAX_STATUSMESSAGE_LENGTH = common dso_local global i32 0, align 4
@NUM_SAVED_TCP_RELAYS = common dso_local global i32 0, align 4
@NUM_SAVED_PATH_NODES = common dso_local global i32 0, align 4
@stderr = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i32*, i32, i32)* @messenger_load_state_callback to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @messenger_load_state_callback(i8* %0, i32* %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.TYPE_10__*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store i8* %0, i8** %6, align 8
  store i32* %1, i32** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %16 = load i8*, i8** %6, align 8
  %17 = bitcast i8* %16 to %struct.TYPE_10__*
  store %struct.TYPE_10__* %17, %struct.TYPE_10__** %10, align 8
  %18 = load i32, i32* %9, align 4
  switch i32 %18, label %158 [
    i32 132, label %19
    i32 136, label %54
    i32 134, label %61
    i32 133, label %66
    i32 129, label %79
    i32 130, label %92
    i32 128, label %101
    i32 131, label %115
    i32 135, label %153
  ]

19:                                               ; preds = %4
  %20 = load i32, i32* %8, align 4
  %21 = sext i32 %20 to i64
  %22 = load i64, i64* @crypto_box_PUBLICKEYBYTES, align 8
  %23 = load i64, i64* @crypto_box_SECRETKEYBYTES, align 8
  %24 = add nsw i64 %22, %23
  %25 = add i64 %24, 4
  %26 = icmp eq i64 %21, %25
  br i1 %26, label %27, label %52

27:                                               ; preds = %19
  %28 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %29 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %28, i32 0, i32 5
  %30 = load i32*, i32** %7, align 8
  %31 = load i32, i32* %30, align 4
  %32 = call i32 @set_nospam(i32* %29, i32 %31)
  %33 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %34 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %33, i32 0, i32 4
  %35 = load %struct.TYPE_11__*, %struct.TYPE_11__** %34, align 8
  %36 = load i32*, i32** %7, align 8
  %37 = getelementptr inbounds i32, i32* %36, i64 4
  %38 = load i64, i64* @crypto_box_PUBLICKEYBYTES, align 8
  %39 = getelementptr inbounds i32, i32* %37, i64 %38
  %40 = call i32 @load_secret_key(%struct.TYPE_11__* %35, i32* %39)
  %41 = load i32*, i32** %7, align 8
  %42 = getelementptr inbounds i32, i32* %41, i64 4
  %43 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %44 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %43, i32 0, i32 4
  %45 = load %struct.TYPE_11__*, %struct.TYPE_11__** %44, align 8
  %46 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = call i32 @public_key_cmp(i32* %42, i32 %47)
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %51

50:                                               ; preds = %27
  store i32 -1, i32* %5, align 4
  br label %159

51:                                               ; preds = %27
  br label %53

52:                                               ; preds = %19
  store i32 -1, i32* %5, align 4
  br label %159

53:                                               ; preds = %51
  br label %158

54:                                               ; preds = %4
  %55 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %56 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %55, i32 0, i32 3
  %57 = load i32, i32* %56, align 8
  %58 = load i32*, i32** %7, align 8
  %59 = load i32, i32* %8, align 4
  %60 = call i32 @DHT_load(i32 %57, i32* %58, i32 %59)
  br label %158

61:                                               ; preds = %4
  %62 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %63 = load i32*, i32** %7, align 8
  %64 = load i32, i32* %8, align 4
  %65 = call i32 @friends_list_load(%struct.TYPE_10__* %62, i32* %63, i32 %64)
  br label %158

66:                                               ; preds = %4
  %67 = load i32, i32* %8, align 4
  %68 = icmp sgt i32 %67, 0
  br i1 %68, label %69, label %78

69:                                               ; preds = %66
  %70 = load i32, i32* %8, align 4
  %71 = load i32, i32* @MAX_NAME_LENGTH, align 4
  %72 = icmp sle i32 %70, %71
  br i1 %72, label %73, label %78

73:                                               ; preds = %69
  %74 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %75 = load i32*, i32** %7, align 8
  %76 = load i32, i32* %8, align 4
  %77 = call i32 @setname(%struct.TYPE_10__* %74, i32* %75, i32 %76)
  br label %78

78:                                               ; preds = %73, %69, %66
  br label %158

79:                                               ; preds = %4
  %80 = load i32, i32* %8, align 4
  %81 = icmp sgt i32 %80, 0
  br i1 %81, label %82, label %91

82:                                               ; preds = %79
  %83 = load i32, i32* %8, align 4
  %84 = load i32, i32* @MAX_STATUSMESSAGE_LENGTH, align 4
  %85 = icmp slt i32 %83, %84
  br i1 %85, label %86, label %91

86:                                               ; preds = %82
  %87 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %88 = load i32*, i32** %7, align 8
  %89 = load i32, i32* %8, align 4
  %90 = call i32 @m_set_statusmessage(%struct.TYPE_10__* %87, i32* %88, i32 %89)
  br label %91

91:                                               ; preds = %86, %82, %79
  br label %158

92:                                               ; preds = %4
  %93 = load i32, i32* %8, align 4
  %94 = icmp eq i32 %93, 1
  br i1 %94, label %95, label %100

95:                                               ; preds = %92
  %96 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %97 = load i32*, i32** %7, align 8
  %98 = load i32, i32* %97, align 4
  %99 = call i32 @m_set_userstatus(%struct.TYPE_10__* %96, i32 %98)
  br label %100

100:                                              ; preds = %95, %92
  br label %158

101:                                              ; preds = %4
  %102 = load i32, i32* %8, align 4
  %103 = icmp eq i32 %102, 0
  br i1 %103, label %104, label %105

104:                                              ; preds = %101
  br label %158

105:                                              ; preds = %101
  %106 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %107 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %106, i32 0, i32 2
  %108 = load %struct.TYPE_9__*, %struct.TYPE_9__** %107, align 8
  %109 = load i32, i32* @NUM_SAVED_TCP_RELAYS, align 4
  %110 = load i32*, i32** %7, align 8
  %111 = load i32, i32* %8, align 4
  %112 = call i32 @unpack_nodes(%struct.TYPE_9__* %108, i32 %109, i32 0, i32* %110, i32 %111, i32 1)
  %113 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %114 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %113, i32 0, i32 1
  store i32 0, i32* %114, align 4
  br label %158

115:                                              ; preds = %4
  %116 = load i32, i32* @NUM_SAVED_PATH_NODES, align 4
  %117 = zext i32 %116 to i64
  %118 = call i8* @llvm.stacksave()
  store i8* %118, i8** %11, align 8
  %119 = alloca %struct.TYPE_9__, i64 %117, align 16
  store i64 %117, i64* %12, align 8
  %120 = load i32, i32* %8, align 4
  %121 = icmp eq i32 %120, 0
  br i1 %121, label %122, label %123

122:                                              ; preds = %115
  store i32 2, i32* %13, align 4
  br label %151

123:                                              ; preds = %115
  %124 = load i32, i32* @NUM_SAVED_PATH_NODES, align 4
  %125 = load i32*, i32** %7, align 8
  %126 = load i32, i32* %8, align 4
  %127 = call i32 @unpack_nodes(%struct.TYPE_9__* %119, i32 %124, i32 0, i32* %125, i32 %126, i32 0)
  store i32 %127, i32* %15, align 4
  store i32 0, i32* %14, align 4
  br label %128

128:                                              ; preds = %147, %123
  %129 = load i32, i32* %14, align 4
  %130 = load i32, i32* %15, align 4
  %131 = icmp slt i32 %129, %130
  br i1 %131, label %132, label %150

132:                                              ; preds = %128
  %133 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %134 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %133, i32 0, i32 0
  %135 = load i32, i32* %134, align 8
  %136 = load i32, i32* %14, align 4
  %137 = sext i32 %136 to i64
  %138 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %119, i64 %137
  %139 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %138, i32 0, i32 1
  %140 = load i32, i32* %139, align 4
  %141 = load i32, i32* %14, align 4
  %142 = sext i32 %141 to i64
  %143 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %119, i64 %142
  %144 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %143, i32 0, i32 0
  %145 = load i32, i32* %144, align 8
  %146 = call i32 @onion_add_bs_path_node(i32 %135, i32 %140, i32 %145)
  br label %147

147:                                              ; preds = %132
  %148 = load i32, i32* %14, align 4
  %149 = add nsw i32 %148, 1
  store i32 %149, i32* %14, align 4
  br label %128

150:                                              ; preds = %128
  store i32 2, i32* %13, align 4
  br label %151

151:                                              ; preds = %150, %122
  %152 = load i8*, i8** %11, align 8
  call void @llvm.stackrestore(i8* %152)
  br label %158

153:                                              ; preds = %4
  %154 = load i32, i32* %8, align 4
  %155 = icmp ne i32 %154, 0
  br i1 %155, label %156, label %157

156:                                              ; preds = %153
  store i32 -1, i32* %5, align 4
  br label %159

157:                                              ; preds = %153
  store i32 -2, i32* %5, align 4
  br label %159

158:                                              ; preds = %4, %151, %105, %104, %100, %91, %78, %61, %54, %53
  store i32 0, i32* %5, align 4
  br label %159

159:                                              ; preds = %158, %157, %156, %52, %50
  %160 = load i32, i32* %5, align 4
  ret i32 %160
}

declare dso_local i32 @set_nospam(i32*, i32) #1

declare dso_local i32 @load_secret_key(%struct.TYPE_11__*, i32*) #1

declare dso_local i32 @public_key_cmp(i32*, i32) #1

declare dso_local i32 @DHT_load(i32, i32*, i32) #1

declare dso_local i32 @friends_list_load(%struct.TYPE_10__*, i32*, i32) #1

declare dso_local i32 @setname(%struct.TYPE_10__*, i32*, i32) #1

declare dso_local i32 @m_set_statusmessage(%struct.TYPE_10__*, i32*, i32) #1

declare dso_local i32 @m_set_userstatus(%struct.TYPE_10__*, i32) #1

declare dso_local i32 @unpack_nodes(%struct.TYPE_9__*, i32, i32, i32*, i32, i32) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare dso_local i32 @onion_add_bs_path_node(i32, i32, i32) #1

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
