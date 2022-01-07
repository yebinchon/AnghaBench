; ModuleID = '/home/carl/AnghaBench/toxcore/toxcore/extr_DHT.c_handle_sendnodes_core.c'
source_filename = "/home/carl/AnghaBench/toxcore/toxcore/extr_DHT.c_handle_sendnodes_core.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@crypto_box_PUBLICKEYBYTES = common dso_local global i32 0, align 4
@crypto_box_NONCEBYTES = common dso_local global i32 0, align 4
@crypto_box_MACBYTES = common dso_local global i32 0, align 4
@MAX_SENT_NODES = common dso_local global i32 0, align 4
@crypto_box_BEFORENMBYTES = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i32, i64*, i64, i32*, i64, i64*)* @handle_sendnodes_core to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @handle_sendnodes_core(i8* %0, i32 %1, i64* %2, i64 %3, i32* %4, i64 %5, i64* %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i64*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64*, align 8
  %16 = alloca i32*, align 8
  %17 = alloca i64, align 8
  %18 = alloca i64, align 8
  %19 = alloca i8*, align 8
  %20 = alloca i64, align 8
  %21 = alloca i64, align 8
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  %25 = alloca i32, align 4
  %26 = alloca i64, align 8
  %27 = alloca i32, align 4
  store i8* %0, i8** %9, align 8
  store i32 %1, i32* %10, align 4
  store i64* %2, i64** %11, align 8
  store i64 %3, i64* %12, align 8
  store i32* %4, i32** %13, align 8
  store i64 %5, i64* %14, align 8
  store i64* %6, i64** %15, align 8
  %28 = load i8*, i8** %9, align 8
  %29 = bitcast i8* %28 to i32*
  store i32* %29, i32** %16, align 8
  %30 = load i32, i32* @crypto_box_PUBLICKEYBYTES, align 4
  %31 = add nsw i32 1, %30
  %32 = load i32, i32* @crypto_box_NONCEBYTES, align 4
  %33 = add nsw i32 %31, %32
  %34 = add nsw i32 %33, 1
  %35 = sext i32 %34 to i64
  %36 = add i64 %35, 4
  %37 = load i32, i32* @crypto_box_MACBYTES, align 4
  %38 = sext i32 %37 to i64
  %39 = add i64 %36, %38
  store i64 %39, i64* %17, align 8
  %40 = load i64, i64* %12, align 8
  %41 = load i64, i64* %17, align 8
  %42 = icmp slt i64 %40, %41
  br i1 %42, label %43, label %44

43:                                               ; preds = %7
  store i32 1, i32* %8, align 4
  br label %155

44:                                               ; preds = %7
  %45 = load i64, i64* %12, align 8
  %46 = load i64, i64* %17, align 8
  %47 = sub nsw i64 %45, %46
  store i64 %47, i64* %18, align 8
  %48 = load i64, i64* %18, align 8
  %49 = icmp eq i64 %48, 0
  br i1 %49, label %50, label %51

50:                                               ; preds = %44
  store i32 1, i32* %8, align 4
  br label %155

51:                                               ; preds = %44
  %52 = load i64, i64* %18, align 8
  %53 = load i32, i32* @MAX_SENT_NODES, align 4
  %54 = sext i32 %53 to i64
  %55 = mul i64 4, %54
  %56 = icmp ugt i64 %52, %55
  br i1 %56, label %57, label %58

57:                                               ; preds = %51
  store i32 1, i32* %8, align 4
  br label %155

58:                                               ; preds = %51
  %59 = load i64, i64* %18, align 8
  %60 = add nsw i64 1, %59
  %61 = add i64 %60, 4
  %62 = call i8* @llvm.stacksave()
  store i8* %62, i8** %19, align 8
  %63 = alloca i64, i64 %61, align 16
  store i64 %61, i64* %20, align 8
  %64 = load i32, i32* @crypto_box_BEFORENMBYTES, align 4
  %65 = zext i32 %64 to i64
  %66 = alloca i64, i64 %65, align 16
  store i64 %65, i64* %21, align 8
  %67 = load i32*, i32** %16, align 8
  %68 = load i64*, i64** %11, align 8
  %69 = getelementptr inbounds i64, i64* %68, i64 1
  %70 = call i32 @DHT_get_shared_key_sent(i32* %67, i64* %66, i64* %69)
  %71 = load i64*, i64** %11, align 8
  %72 = getelementptr inbounds i64, i64* %71, i64 1
  %73 = load i32, i32* @crypto_box_PUBLICKEYBYTES, align 4
  %74 = sext i32 %73 to i64
  %75 = getelementptr inbounds i64, i64* %72, i64 %74
  %76 = load i64*, i64** %11, align 8
  %77 = getelementptr inbounds i64, i64* %76, i64 1
  %78 = load i32, i32* @crypto_box_PUBLICKEYBYTES, align 4
  %79 = sext i32 %78 to i64
  %80 = getelementptr inbounds i64, i64* %77, i64 %79
  %81 = load i32, i32* @crypto_box_NONCEBYTES, align 4
  %82 = sext i32 %81 to i64
  %83 = getelementptr inbounds i64, i64* %80, i64 %82
  %84 = load i64, i64* %18, align 8
  %85 = add nsw i64 1, %84
  %86 = add i64 %85, 4
  %87 = load i32, i32* @crypto_box_MACBYTES, align 4
  %88 = sext i32 %87 to i64
  %89 = add i64 %86, %88
  %90 = trunc i64 %89 to i32
  %91 = call i32 @decrypt_data_symmetric(i64* %66, i64* %75, i64* %83, i32 %90, i64* %63)
  store i32 %91, i32* %22, align 4
  %92 = load i32, i32* %22, align 4
  %93 = zext i32 %92 to i64
  %94 = mul nuw i64 8, %61
  %95 = icmp ne i64 %93, %94
  br i1 %95, label %96, label %97

96:                                               ; preds = %58
  store i32 1, i32* %8, align 4
  store i32 1, i32* %23, align 4
  br label %153

97:                                               ; preds = %58
  %98 = getelementptr inbounds i64, i64* %63, i64 0
  %99 = load i64, i64* %98, align 16
  %100 = load i64, i64* %14, align 8
  %101 = icmp sgt i64 %99, %100
  br i1 %101, label %102, label %103

102:                                              ; preds = %97
  store i32 1, i32* %8, align 4
  store i32 1, i32* %23, align 4
  br label %153

103:                                              ; preds = %97
  %104 = getelementptr inbounds i64, i64* %63, i64 1
  %105 = load i64, i64* %18, align 8
  %106 = getelementptr inbounds i64, i64* %104, i64 %105
  %107 = call i32 @memcpy(i32* %25, i64* %106, i32 4)
  %108 = load i32*, i32** %16, align 8
  %109 = load i64*, i64** %11, align 8
  %110 = getelementptr inbounds i64, i64* %109, i64 1
  %111 = load i32, i32* %10, align 4
  %112 = load i32, i32* %25, align 4
  %113 = call i32 @sent_getnode_to_node(i32* %108, i64* %110, i32 %111, i32 %112, i32* %24)
  %114 = icmp ne i32 %113, 0
  br i1 %114, label %116, label %115

115:                                              ; preds = %103
  store i32 1, i32* %8, align 4
  store i32 1, i32* %23, align 4
  br label %153

116:                                              ; preds = %103
  store i64 0, i64* %26, align 8
  %117 = load i32*, i32** %13, align 8
  %118 = getelementptr inbounds i64, i64* %63, i64 0
  %119 = load i64, i64* %118, align 16
  %120 = getelementptr inbounds i64, i64* %63, i64 1
  %121 = load i64, i64* %18, align 8
  %122 = call i32 @unpack_nodes(i32* %117, i64 %119, i64* %26, i64* %120, i64 %121, i32 0)
  store i32 %122, i32* %27, align 4
  %123 = load i64, i64* %26, align 8
  %124 = load i64, i64* %18, align 8
  %125 = icmp ne i64 %123, %124
  br i1 %125, label %126, label %127

126:                                              ; preds = %116
  store i32 1, i32* %8, align 4
  store i32 1, i32* %23, align 4
  br label %153

127:                                              ; preds = %116
  %128 = load i32, i32* %27, align 4
  %129 = sext i32 %128 to i64
  %130 = getelementptr inbounds i64, i64* %63, i64 0
  %131 = load i64, i64* %130, align 16
  %132 = icmp ne i64 %129, %131
  br i1 %132, label %133, label %134

133:                                              ; preds = %127
  store i32 1, i32* %8, align 4
  store i32 1, i32* %23, align 4
  br label %153

134:                                              ; preds = %127
  %135 = load i32, i32* %27, align 4
  %136 = icmp slt i32 %135, 0
  br i1 %136, label %137, label %138

137:                                              ; preds = %134
  store i32 1, i32* %8, align 4
  store i32 1, i32* %23, align 4
  br label %153

138:                                              ; preds = %134
  %139 = load i32*, i32** %16, align 8
  %140 = load i32, i32* %10, align 4
  %141 = load i64*, i64** %11, align 8
  %142 = getelementptr inbounds i64, i64* %141, i64 1
  %143 = call i32 @addto_lists(i32* %139, i32 %140, i64* %142)
  %144 = load i32, i32* %27, align 4
  %145 = sext i32 %144 to i64
  %146 = load i64*, i64** %15, align 8
  store i64 %145, i64* %146, align 8
  %147 = load i32*, i32** %16, align 8
  %148 = load i64*, i64** %11, align 8
  %149 = getelementptr inbounds i64, i64* %148, i64 1
  %150 = getelementptr inbounds i64, i64* %63, i64 1
  %151 = load i64, i64* %18, align 8
  %152 = call i32 @send_hardening_getnode_res(i32* %147, i32* %24, i64* %149, i64* %150, i64 %151)
  store i32 0, i32* %8, align 4
  store i32 1, i32* %23, align 4
  br label %153

153:                                              ; preds = %138, %137, %133, %126, %115, %102, %96
  %154 = load i8*, i8** %19, align 8
  call void @llvm.stackrestore(i8* %154)
  br label %155

155:                                              ; preds = %153, %57, %50, %43
  %156 = load i32, i32* %8, align 4
  ret i32 %156
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @DHT_get_shared_key_sent(i32*, i64*, i64*) #2

declare dso_local i32 @decrypt_data_symmetric(i64*, i64*, i64*, i32, i64*) #2

declare dso_local i32 @memcpy(i32*, i64*, i32) #2

declare dso_local i32 @sent_getnode_to_node(i32*, i64*, i32, i32, i32*) #2

declare dso_local i32 @unpack_nodes(i32*, i64, i64*, i64*, i64, i32) #2

declare dso_local i32 @addto_lists(i32*, i32, i64*) #2

declare dso_local i32 @send_hardening_getnode_res(i32*, i32*, i64*, i64*, i64) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
