; ModuleID = '/home/carl/AnghaBench/toxcore/toxcore/extr_onion_client.c_handle_announce_response.c'
source_filename = "/home/carl/AnghaBench/toxcore/toxcore/extr_onion_client.c_handle_announce_response.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i32, i32, %struct.TYPE_8__*, %struct.TYPE_7__* }
%struct.TYPE_8__ = type { i64, i32 }
%struct.TYPE_7__ = type { i32 }

@ONION_ANNOUNCE_RESPONSE_MIN_SIZE = common dso_local global i64 0, align 8
@ONION_ANNOUNCE_RESPONSE_MAX_SIZE = common dso_local global i64 0, align 8
@crypto_box_PUBLICKEYBYTES = common dso_local global i32 0, align 4
@ONION_PING_ID_SIZE = common dso_local global i32 0, align 4
@ONION_ANNOUNCE_SENDBACK_DATA_LENGTH = common dso_local global i32 0, align 4
@crypto_box_NONCEBYTES = common dso_local global i32 0, align 4
@MAX_SENT_NODES = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i32, i32*, i64)* @handle_announce_response to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @handle_announce_response(i8* %0, i32 %1, i32* %2, i64 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.TYPE_9__*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i64, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i64, align 8
  %19 = alloca i32, align 4
  %20 = alloca i8*, align 8
  %21 = alloca i64, align 8
  %22 = alloca i32, align 4
  store i8* %0, i8** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32* %2, i32** %8, align 8
  store i64 %3, i64* %9, align 8
  %23 = load i8*, i8** %6, align 8
  %24 = bitcast i8* %23 to %struct.TYPE_9__*
  store %struct.TYPE_9__* %24, %struct.TYPE_9__** %10, align 8
  %25 = load i64, i64* %9, align 8
  %26 = load i64, i64* @ONION_ANNOUNCE_RESPONSE_MIN_SIZE, align 8
  %27 = icmp slt i64 %25, %26
  br i1 %27, label %32, label %28

28:                                               ; preds = %4
  %29 = load i64, i64* %9, align 8
  %30 = load i64, i64* @ONION_ANNOUNCE_RESPONSE_MAX_SIZE, align 8
  %31 = icmp sgt i64 %29, %30
  br i1 %31, label %32, label %33

32:                                               ; preds = %28, %4
  store i32 1, i32* %5, align 4
  br label %184

33:                                               ; preds = %28
  %34 = load i64, i64* %9, align 8
  %35 = load i64, i64* @ONION_ANNOUNCE_RESPONSE_MIN_SIZE, align 8
  %36 = sub nsw i64 %34, %35
  store i64 %36, i64* %11, align 8
  %37 = load i32, i32* @crypto_box_PUBLICKEYBYTES, align 4
  %38 = zext i32 %37 to i64
  %39 = call i8* @llvm.stacksave()
  store i8* %39, i8** %12, align 8
  %40 = alloca i32, i64 %38, align 16
  store i64 %38, i64* %13, align 8
  %41 = load %struct.TYPE_9__*, %struct.TYPE_9__** %10, align 8
  %42 = load i32*, i32** %8, align 8
  %43 = getelementptr inbounds i32, i32* %42, i64 1
  %44 = call i32 @check_sendback(%struct.TYPE_9__* %41, i32* %43, i32* %40, i32* %14, i32* %15)
  store i32 %44, i32* %16, align 4
  %45 = load i32, i32* %16, align 4
  %46 = load %struct.TYPE_9__*, %struct.TYPE_9__** %10, align 8
  %47 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 8
  %49 = icmp sgt i32 %45, %48
  br i1 %49, label %50, label %51

50:                                               ; preds = %33
  store i32 1, i32* %5, align 4
  store i32 1, i32* %17, align 4
  br label %182

51:                                               ; preds = %33
  %52 = load i32, i32* @ONION_PING_ID_SIZE, align 4
  %53 = add nsw i32 1, %52
  %54 = sext i32 %53 to i64
  %55 = load i64, i64* %11, align 8
  %56 = add nsw i64 %54, %55
  %57 = alloca i32, i64 %56, align 16
  store i64 %56, i64* %18, align 8
  store i32 -1, i32* %19, align 4
  %58 = load i32, i32* %16, align 4
  %59 = icmp eq i32 %58, 0
  br i1 %59, label %60, label %87

60:                                               ; preds = %51
  %61 = load %struct.TYPE_9__*, %struct.TYPE_9__** %10, align 8
  %62 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %61, i32 0, i32 3
  %63 = load %struct.TYPE_7__*, %struct.TYPE_7__** %62, align 8
  %64 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 4
  %66 = load i32*, i32** %8, align 8
  %67 = getelementptr inbounds i32, i32* %66, i64 1
  %68 = load i32, i32* @ONION_ANNOUNCE_SENDBACK_DATA_LENGTH, align 4
  %69 = sext i32 %68 to i64
  %70 = getelementptr inbounds i32, i32* %67, i64 %69
  %71 = load i32*, i32** %8, align 8
  %72 = getelementptr inbounds i32, i32* %71, i64 1
  %73 = load i32, i32* @ONION_ANNOUNCE_SENDBACK_DATA_LENGTH, align 4
  %74 = sext i32 %73 to i64
  %75 = getelementptr inbounds i32, i32* %72, i64 %74
  %76 = load i32, i32* @crypto_box_NONCEBYTES, align 4
  %77 = sext i32 %76 to i64
  %78 = getelementptr inbounds i32, i32* %75, i64 %77
  %79 = load i64, i64* %9, align 8
  %80 = load i32, i32* @ONION_ANNOUNCE_SENDBACK_DATA_LENGTH, align 4
  %81 = add nsw i32 1, %80
  %82 = load i32, i32* @crypto_box_NONCEBYTES, align 4
  %83 = add nsw i32 %81, %82
  %84 = sext i32 %83 to i64
  %85 = sub nsw i64 %79, %84
  %86 = call i32 @decrypt_data(i32* %40, i32 %65, i32* %70, i32* %78, i64 %85, i32* %57)
  store i32 %86, i32* %19, align 4
  br label %130

87:                                               ; preds = %51
  %88 = load %struct.TYPE_9__*, %struct.TYPE_9__** %10, align 8
  %89 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %88, i32 0, i32 2
  %90 = load %struct.TYPE_8__*, %struct.TYPE_8__** %89, align 8
  %91 = load i32, i32* %16, align 4
  %92 = sub nsw i32 %91, 1
  %93 = sext i32 %92 to i64
  %94 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %90, i64 %93
  %95 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %94, i32 0, i32 0
  %96 = load i64, i64* %95, align 8
  %97 = icmp eq i64 %96, 0
  br i1 %97, label %98, label %99

98:                                               ; preds = %87
  store i32 1, i32* %5, align 4
  store i32 1, i32* %17, align 4
  br label %182

99:                                               ; preds = %87
  %100 = load %struct.TYPE_9__*, %struct.TYPE_9__** %10, align 8
  %101 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %100, i32 0, i32 2
  %102 = load %struct.TYPE_8__*, %struct.TYPE_8__** %101, align 8
  %103 = load i32, i32* %16, align 4
  %104 = sub nsw i32 %103, 1
  %105 = sext i32 %104 to i64
  %106 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %102, i64 %105
  %107 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %106, i32 0, i32 1
  %108 = load i32, i32* %107, align 8
  %109 = load i32*, i32** %8, align 8
  %110 = getelementptr inbounds i32, i32* %109, i64 1
  %111 = load i32, i32* @ONION_ANNOUNCE_SENDBACK_DATA_LENGTH, align 4
  %112 = sext i32 %111 to i64
  %113 = getelementptr inbounds i32, i32* %110, i64 %112
  %114 = load i32*, i32** %8, align 8
  %115 = getelementptr inbounds i32, i32* %114, i64 1
  %116 = load i32, i32* @ONION_ANNOUNCE_SENDBACK_DATA_LENGTH, align 4
  %117 = sext i32 %116 to i64
  %118 = getelementptr inbounds i32, i32* %115, i64 %117
  %119 = load i32, i32* @crypto_box_NONCEBYTES, align 4
  %120 = sext i32 %119 to i64
  %121 = getelementptr inbounds i32, i32* %118, i64 %120
  %122 = load i64, i64* %9, align 8
  %123 = load i32, i32* @ONION_ANNOUNCE_SENDBACK_DATA_LENGTH, align 4
  %124 = add nsw i32 1, %123
  %125 = load i32, i32* @crypto_box_NONCEBYTES, align 4
  %126 = add nsw i32 %124, %125
  %127 = sext i32 %126 to i64
  %128 = sub nsw i64 %122, %127
  %129 = call i32 @decrypt_data(i32* %40, i32 %108, i32* %113, i32* %121, i64 %128, i32* %57)
  store i32 %129, i32* %19, align 4
  br label %130

130:                                              ; preds = %99, %60
  %131 = load i32, i32* %19, align 4
  %132 = sext i32 %131 to i64
  %133 = mul nuw i64 4, %56
  %134 = icmp ne i64 %132, %133
  br i1 %134, label %135, label %136

135:                                              ; preds = %130
  store i32 1, i32* %5, align 4
  store i32 1, i32* %17, align 4
  br label %182

136:                                              ; preds = %130
  %137 = load %struct.TYPE_9__*, %struct.TYPE_9__** %10, align 8
  %138 = load i32, i32* %16, align 4
  %139 = load i32, i32* %14, align 4
  %140 = getelementptr inbounds i32, i32* %57, i64 0
  %141 = load i32, i32* %140, align 16
  %142 = getelementptr inbounds i32, i32* %57, i64 1
  %143 = load i32, i32* %15, align 4
  %144 = call i32 @client_add_to_list(%struct.TYPE_9__* %137, i32 %138, i32* %40, i32 %139, i32 %141, i32* %142, i32 %143)
  %145 = icmp eq i32 %144, -1
  br i1 %145, label %146, label %147

146:                                              ; preds = %136
  store i32 1, i32* %5, align 4
  store i32 1, i32* %17, align 4
  br label %182

147:                                              ; preds = %136
  %148 = load i64, i64* %11, align 8
  %149 = icmp ne i64 %148, 0
  br i1 %149, label %150, label %178

150:                                              ; preds = %147
  %151 = load i32, i32* @MAX_SENT_NODES, align 4
  %152 = zext i32 %151 to i64
  %153 = call i8* @llvm.stacksave()
  store i8* %153, i8** %20, align 8
  %154 = alloca i32, i64 %152, align 16
  store i64 %152, i64* %21, align 8
  %155 = load i32, i32* @MAX_SENT_NODES, align 4
  %156 = getelementptr inbounds i32, i32* %57, i64 1
  %157 = load i32, i32* @ONION_PING_ID_SIZE, align 4
  %158 = sext i32 %157 to i64
  %159 = getelementptr inbounds i32, i32* %156, i64 %158
  %160 = load i64, i64* %11, align 8
  %161 = call i32 @unpack_nodes(i32* %154, i32 %155, i32 0, i32* %159, i64 %160, i32 0)
  store i32 %161, i32* %22, align 4
  %162 = load i32, i32* %22, align 4
  %163 = icmp sle i32 %162, 0
  br i1 %163, label %164, label %165

164:                                              ; preds = %150
  store i32 1, i32* %5, align 4
  store i32 1, i32* %17, align 4
  br label %174

165:                                              ; preds = %150
  %166 = load %struct.TYPE_9__*, %struct.TYPE_9__** %10, align 8
  %167 = load i32, i32* %16, align 4
  %168 = load i32, i32* %22, align 4
  %169 = load i32, i32* %7, align 4
  %170 = call i32 @client_ping_nodes(%struct.TYPE_9__* %166, i32 %167, i32* %154, i32 %168, i32 %169)
  %171 = icmp eq i32 %170, -1
  br i1 %171, label %172, label %173

172:                                              ; preds = %165
  store i32 1, i32* %5, align 4
  store i32 1, i32* %17, align 4
  br label %174

173:                                              ; preds = %165
  store i32 0, i32* %17, align 4
  br label %174

174:                                              ; preds = %173, %172, %164
  %175 = load i8*, i8** %20, align 8
  call void @llvm.stackrestore(i8* %175)
  %176 = load i32, i32* %17, align 4
  switch i32 %176, label %182 [
    i32 0, label %177
  ]

177:                                              ; preds = %174
  br label %178

178:                                              ; preds = %177, %147
  %179 = call i32 (...) @unix_time()
  %180 = load %struct.TYPE_9__*, %struct.TYPE_9__** %10, align 8
  %181 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %180, i32 0, i32 1
  store i32 %179, i32* %181, align 4
  store i32 0, i32* %5, align 4
  store i32 1, i32* %17, align 4
  br label %182

182:                                              ; preds = %178, %174, %146, %135, %98, %50
  %183 = load i8*, i8** %12, align 8
  call void @llvm.stackrestore(i8* %183)
  br label %184

184:                                              ; preds = %182, %32
  %185 = load i32, i32* %5, align 4
  ret i32 %185
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @check_sendback(%struct.TYPE_9__*, i32*, i32*, i32*, i32*) #2

declare dso_local i32 @decrypt_data(i32*, i32, i32*, i32*, i64, i32*) #2

declare dso_local i32 @client_add_to_list(%struct.TYPE_9__*, i32, i32*, i32, i32, i32*, i32) #2

declare dso_local i32 @unpack_nodes(i32*, i32, i32, i32*, i64, i32) #2

declare dso_local i32 @client_ping_nodes(%struct.TYPE_9__*, i32, i32*, i32, i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

declare dso_local i32 @unix_time(...) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
