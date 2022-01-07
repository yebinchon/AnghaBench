; ModuleID = '/home/carl/AnghaBench/vlc/src/network/extr_tcp.c_SocksNegotiate.c'
source_filename = "/home/carl/AnghaBench/vlc/src/network/extr_tcp.c_SocksNegotiate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@VLC_SUCCESS = common dso_local global i32 0, align 4
@VLC_EGENERIC = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [22 x i8] c"socks: v=%d method=%x\00", align 1
@.str.1 = private unnamed_addr constant [34 x i8] c"socks: no authentication required\00", align 1
@.str.2 = private unnamed_addr constant [86 x i8] c"socks: server mandates authentication but a username and/or password was not supplied\00", align 1
@.str.3 = private unnamed_addr constant [94 x i8] c"socks: rejecting username and/or password due to violation of RFC1929 (longer than 255 bytes)\00", align 1
@.str.4 = private unnamed_addr constant [40 x i8] c"socks: username/password authentication\00", align 1
@.str.5 = private unnamed_addr constant [22 x i8] c"socks: v=%d status=%x\00", align 1
@.str.6 = private unnamed_addr constant [31 x i8] c"socks: authentication rejected\00", align 1
@.str.7 = private unnamed_addr constant [44 x i8] c"socks: unsupported authentication method %x\00", align 1
@.str.8 = private unnamed_addr constant [29 x i8] c"socks: authentication needed\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32, i32, i8*, i8*)* @SocksNegotiate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @SocksNegotiate(i32* %0, i32 %1, i32 %2, i8* %3, i8* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca [640 x i32], align 16
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store i32* %0, i32** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store i8* %3, i8** %10, align 8
  store i8* %4, i8** %11, align 8
  store i32 0, i32* %14, align 4
  %17 = load i32, i32* %9, align 4
  %18 = icmp ne i32 %17, 5
  br i1 %18, label %19, label %21

19:                                               ; preds = %5
  %20 = load i32, i32* @VLC_SUCCESS, align 4
  store i32 %20, i32* %6, align 4
  br label %171

21:                                               ; preds = %5
  %22 = load i32, i32* %9, align 4
  %23 = getelementptr inbounds [640 x i32], [640 x i32]* %12, i64 0, i64 0
  store i32 %22, i32* %23, align 16
  %24 = load i8*, i8** %10, align 8
  %25 = icmp ne i8* %24, null
  br i1 %25, label %26, label %33

26:                                               ; preds = %21
  %27 = load i8*, i8** %11, align 8
  %28 = icmp ne i8* %27, null
  br i1 %28, label %29, label %33

29:                                               ; preds = %26
  %30 = getelementptr inbounds [640 x i32], [640 x i32]* %12, i64 0, i64 1
  store i32 2, i32* %30, align 4
  %31 = getelementptr inbounds [640 x i32], [640 x i32]* %12, i64 0, i64 2
  store i32 0, i32* %31, align 8
  %32 = getelementptr inbounds [640 x i32], [640 x i32]* %12, i64 0, i64 3
  store i32 2, i32* %32, align 4
  store i32 4, i32* %13, align 4
  store i32 1, i32* %14, align 4
  br label %36

33:                                               ; preds = %26, %21
  %34 = getelementptr inbounds [640 x i32], [640 x i32]* %12, i64 0, i64 1
  store i32 1, i32* %34, align 4
  %35 = getelementptr inbounds [640 x i32], [640 x i32]* %12, i64 0, i64 2
  store i32 0, i32* %35, align 8
  store i32 3, i32* %13, align 4
  br label %36

36:                                               ; preds = %33, %29
  %37 = load i32*, i32** %7, align 8
  %38 = load i32, i32* %8, align 4
  %39 = getelementptr inbounds [640 x i32], [640 x i32]* %12, i64 0, i64 0
  %40 = load i32, i32* %13, align 4
  %41 = call i32 @net_Write(i32* %37, i32 %38, i32* %39, i32 %40)
  %42 = load i32, i32* %13, align 4
  %43 = icmp ne i32 %41, %42
  br i1 %43, label %44, label %46

44:                                               ; preds = %36
  %45 = load i32, i32* @VLC_EGENERIC, align 4
  store i32 %45, i32* %6, align 4
  br label %171

46:                                               ; preds = %36
  %47 = load i32*, i32** %7, align 8
  %48 = load i32, i32* %8, align 4
  %49 = getelementptr inbounds [640 x i32], [640 x i32]* %12, i64 0, i64 0
  %50 = call i32 @net_Read(i32* %47, i32 %48, i32* %49, i32 2)
  %51 = icmp ne i32 %50, 2
  br i1 %51, label %52, label %54

52:                                               ; preds = %46
  %53 = load i32, i32* @VLC_EGENERIC, align 4
  store i32 %53, i32* %6, align 4
  br label %171

54:                                               ; preds = %46
  %55 = load i32*, i32** %7, align 8
  %56 = getelementptr inbounds [640 x i32], [640 x i32]* %12, i64 0, i64 0
  %57 = load i32, i32* %56, align 16
  %58 = getelementptr inbounds [640 x i32], [640 x i32]* %12, i64 0, i64 1
  %59 = load i32, i32* %58, align 4
  %60 = call i32 (i32*, i8*, ...) @msg_Dbg(i32* %55, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), i32 %57, i32 %59)
  %61 = getelementptr inbounds [640 x i32], [640 x i32]* %12, i64 0, i64 1
  %62 = load i32, i32* %61, align 4
  %63 = icmp eq i32 %62, 0
  br i1 %63, label %64, label %67

64:                                               ; preds = %54
  %65 = load i32*, i32** %7, align 8
  %66 = call i32 (i32*, i8*, ...) @msg_Dbg(i32* %65, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.1, i64 0, i64 0))
  br label %169

67:                                               ; preds = %54
  %68 = getelementptr inbounds [640 x i32], [640 x i32]* %12, i64 0, i64 1
  %69 = load i32, i32* %68, align 4
  %70 = icmp eq i32 %69, 2
  br i1 %70, label %71, label %155

71:                                               ; preds = %67
  %72 = load i8*, i8** %10, align 8
  %73 = icmp eq i8* %72, null
  br i1 %73, label %77, label %74

74:                                               ; preds = %71
  %75 = load i8*, i8** %11, align 8
  %76 = icmp eq i8* %75, null
  br i1 %76, label %77, label %81

77:                                               ; preds = %74, %71
  %78 = load i32*, i32** %7, align 8
  %79 = call i32 (i32*, i8*, ...) @msg_Err(i32* %78, i8* getelementptr inbounds ([86 x i8], [86 x i8]* @.str.2, i64 0, i64 0))
  %80 = load i32, i32* @VLC_EGENERIC, align 4
  store i32 %80, i32* %6, align 4
  br label %171

81:                                               ; preds = %74
  %82 = load i8*, i8** %10, align 8
  %83 = call i32 @strlen(i8* %82)
  store i32 %83, i32* %15, align 4
  %84 = load i8*, i8** %11, align 8
  %85 = call i32 @strlen(i8* %84)
  store i32 %85, i32* %16, align 4
  %86 = load i32, i32* %15, align 4
  %87 = icmp sgt i32 %86, 255
  br i1 %87, label %91, label %88

88:                                               ; preds = %81
  %89 = load i32, i32* %16, align 4
  %90 = icmp sgt i32 %89, 255
  br i1 %90, label %91, label %95

91:                                               ; preds = %88, %81
  %92 = load i32*, i32** %7, align 8
  %93 = call i32 (i32*, i8*, ...) @msg_Err(i32* %92, i8* getelementptr inbounds ([94 x i8], [94 x i8]* @.str.3, i64 0, i64 0))
  %94 = load i32, i32* @VLC_EGENERIC, align 4
  store i32 %94, i32* %6, align 4
  br label %171

95:                                               ; preds = %88
  %96 = load i32*, i32** %7, align 8
  %97 = call i32 (i32*, i8*, ...) @msg_Dbg(i32* %96, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.4, i64 0, i64 0))
  %98 = load i32, i32* %9, align 4
  %99 = getelementptr inbounds [640 x i32], [640 x i32]* %12, i64 0, i64 0
  store i32 %98, i32* %99, align 16
  %100 = load i32, i32* %15, align 4
  %101 = getelementptr inbounds [640 x i32], [640 x i32]* %12, i64 0, i64 1
  store i32 %100, i32* %101, align 4
  %102 = getelementptr inbounds [640 x i32], [640 x i32]* %12, i64 0, i64 2
  %103 = load i8*, i8** %10, align 8
  %104 = load i32, i32* %15, align 4
  %105 = call i32 @memcpy(i32* %102, i8* %103, i32 %104)
  %106 = load i32, i32* %16, align 4
  %107 = load i32, i32* %15, align 4
  %108 = add nsw i32 2, %107
  %109 = sext i32 %108 to i64
  %110 = getelementptr inbounds [640 x i32], [640 x i32]* %12, i64 0, i64 %109
  store i32 %106, i32* %110, align 4
  %111 = load i32, i32* %15, align 4
  %112 = add nsw i32 2, %111
  %113 = add nsw i32 %112, 1
  %114 = sext i32 %113 to i64
  %115 = getelementptr inbounds [640 x i32], [640 x i32]* %12, i64 0, i64 %114
  %116 = load i8*, i8** %11, align 8
  %117 = load i32, i32* %16, align 4
  %118 = call i32 @memcpy(i32* %115, i8* %116, i32 %117)
  %119 = load i32, i32* %15, align 4
  %120 = add nsw i32 3, %119
  %121 = load i32, i32* %16, align 4
  %122 = add nsw i32 %120, %121
  store i32 %122, i32* %13, align 4
  %123 = load i32*, i32** %7, align 8
  %124 = load i32, i32* %8, align 4
  %125 = getelementptr inbounds [640 x i32], [640 x i32]* %12, i64 0, i64 0
  %126 = load i32, i32* %13, align 4
  %127 = call i32 @net_Write(i32* %123, i32 %124, i32* %125, i32 %126)
  %128 = load i32, i32* %13, align 4
  %129 = icmp ne i32 %127, %128
  br i1 %129, label %130, label %132

130:                                              ; preds = %95
  %131 = load i32, i32* @VLC_EGENERIC, align 4
  store i32 %131, i32* %6, align 4
  br label %171

132:                                              ; preds = %95
  %133 = load i32*, i32** %7, align 8
  %134 = load i32, i32* %8, align 4
  %135 = getelementptr inbounds [640 x i32], [640 x i32]* %12, i64 0, i64 0
  %136 = call i32 @net_Read(i32* %133, i32 %134, i32* %135, i32 2)
  %137 = icmp ne i32 %136, 2
  br i1 %137, label %138, label %140

138:                                              ; preds = %132
  %139 = load i32, i32* @VLC_EGENERIC, align 4
  store i32 %139, i32* %6, align 4
  br label %171

140:                                              ; preds = %132
  %141 = load i32*, i32** %7, align 8
  %142 = getelementptr inbounds [640 x i32], [640 x i32]* %12, i64 0, i64 0
  %143 = load i32, i32* %142, align 16
  %144 = getelementptr inbounds [640 x i32], [640 x i32]* %12, i64 0, i64 1
  %145 = load i32, i32* %144, align 4
  %146 = call i32 (i32*, i8*, ...) @msg_Dbg(i32* %141, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.5, i64 0, i64 0), i32 %143, i32 %145)
  %147 = getelementptr inbounds [640 x i32], [640 x i32]* %12, i64 0, i64 1
  %148 = load i32, i32* %147, align 4
  %149 = icmp ne i32 %148, 0
  br i1 %149, label %150, label %154

150:                                              ; preds = %140
  %151 = load i32*, i32** %7, align 8
  %152 = call i32 (i32*, i8*, ...) @msg_Err(i32* %151, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.6, i64 0, i64 0))
  %153 = load i32, i32* @VLC_EGENERIC, align 4
  store i32 %153, i32* %6, align 4
  br label %171

154:                                              ; preds = %140
  br label %168

155:                                              ; preds = %67
  %156 = load i32, i32* %14, align 4
  %157 = icmp ne i32 %156, 0
  br i1 %157, label %158, label %163

158:                                              ; preds = %155
  %159 = load i32*, i32** %7, align 8
  %160 = getelementptr inbounds [640 x i32], [640 x i32]* %12, i64 0, i64 0
  %161 = load i32, i32* %160, align 16
  %162 = call i32 (i32*, i8*, ...) @msg_Err(i32* %159, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.7, i64 0, i64 0), i32 %161)
  br label %166

163:                                              ; preds = %155
  %164 = load i32*, i32** %7, align 8
  %165 = call i32 (i32*, i8*, ...) @msg_Err(i32* %164, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.8, i64 0, i64 0))
  br label %166

166:                                              ; preds = %163, %158
  %167 = load i32, i32* @VLC_EGENERIC, align 4
  store i32 %167, i32* %6, align 4
  br label %171

168:                                              ; preds = %154
  br label %169

169:                                              ; preds = %168, %64
  %170 = load i32, i32* @VLC_SUCCESS, align 4
  store i32 %170, i32* %6, align 4
  br label %171

171:                                              ; preds = %169, %166, %150, %138, %130, %91, %77, %52, %44, %19
  %172 = load i32, i32* %6, align 4
  ret i32 %172
}

declare dso_local i32 @net_Write(i32*, i32, i32*, i32) #1

declare dso_local i32 @net_Read(i32*, i32, i32*, i32) #1

declare dso_local i32 @msg_Dbg(i32*, i8*, ...) #1

declare dso_local i32 @msg_Err(i32*, i8*, ...) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i32 @memcpy(i32*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
