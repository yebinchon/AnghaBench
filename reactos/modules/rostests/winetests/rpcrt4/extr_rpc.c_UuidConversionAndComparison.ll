; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/winetests/rpcrt4/extr_rpc.c_UuidConversionAndComparison.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/winetests/rpcrt4/extr_rpc.c_UuidConversionAndComparison.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@Uuid_Table = common dso_local global i32* null, align 8
@Uuid_Comparison_Grid = common dso_local global i32** null, align 8
@.str = private unnamed_addr constant [15 x i8] c"UUID Equality\0A\00", align 1
@RPC_S_OK = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [26 x i8] c"Simple UUID->String copy\0A\00", align 1
@.str.2 = private unnamed_addr constant [53 x i8] c"Simple String->UUID copy from generated UUID String\0A\00", align 1
@.str.3 = private unnamed_addr constant [34 x i8] c"Uuid -> String -> Uuid transform\0A\00", align 1
@RPC_S_INVALID_STRING_UUID = common dso_local global i64 0, align 8
@.str.4 = private unnamed_addr constant [21 x i8] c"Invalid UUID String\0A\00", align 1
@.str.5 = private unnamed_addr constant [27 x i8] c"Simple UUID->WString copy\0A\00", align 1
@.str.6 = private unnamed_addr constant [54 x i8] c"Simple WString->UUID copy from generated UUID String\0A\00", align 1
@.str.7 = private unnamed_addr constant [35 x i8] c"Uuid -> WString -> Uuid transform\0A\00", align 1
@.str.8 = private unnamed_addr constant [22 x i8] c"Invalid UUID WString\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @UuidConversionAndComparison to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @UuidConversionAndComparison() #0 {
  %1 = alloca [100 x i8], align 16
  %2 = alloca i8, align 1
  %3 = alloca i8*, align 8
  %4 = alloca [100 x i8], align 16
  %5 = alloca i8, align 1
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = getelementptr inbounds [100 x i8], [100 x i8]* %1, i64 0, i64 0
  store i8* %14, i8** %3, align 8
  %15 = getelementptr inbounds [100 x i8], [100 x i8]* %4, i64 0, i64 0
  store i8* %15, i8** %6, align 8
  store i32 0, i32* %12, align 4
  br label %16

16:                                               ; preds = %63, %0
  %17 = load i32, i32* %12, align 4
  %18 = icmp slt i32 %17, 11
  br i1 %18, label %19, label %66

19:                                               ; preds = %16
  store i32 0, i32* %13, align 4
  br label %20

20:                                               ; preds = %59, %19
  %21 = load i32, i32* %13, align 4
  %22 = icmp slt i32 %21, 11
  br i1 %22, label %23, label %62

23:                                               ; preds = %20
  %24 = load i32, i32* %12, align 4
  %25 = icmp slt i32 %24, 10
  br i1 %25, label %26, label %32

26:                                               ; preds = %23
  %27 = load i32*, i32** @Uuid_Table, align 8
  %28 = load i32, i32* %12, align 4
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds i32, i32* %27, i64 %29
  %31 = load i32, i32* %30, align 4
  store i32 %31, i32* %7, align 4
  store i32* %7, i32** %9, align 8
  br label %33

32:                                               ; preds = %23
  store i32* null, i32** %9, align 8
  br label %33

33:                                               ; preds = %32, %26
  %34 = load i32, i32* %13, align 4
  %35 = icmp slt i32 %34, 10
  br i1 %35, label %36, label %42

36:                                               ; preds = %33
  %37 = load i32*, i32** @Uuid_Table, align 8
  %38 = load i32, i32* %13, align 4
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds i32, i32* %37, i64 %39
  %41 = load i32, i32* %40, align 4
  store i32 %41, i32* %8, align 4
  store i32* %8, i32** %10, align 8
  br label %43

42:                                               ; preds = %33
  store i32* null, i32** %10, align 8
  br label %43

43:                                               ; preds = %42, %36
  %44 = load i32*, i32** %9, align 8
  %45 = load i32*, i32** %10, align 8
  %46 = call i32 @UuidEqual(i32* %44, i32* %45, i64* %11)
  %47 = load i32**, i32*** @Uuid_Comparison_Grid, align 8
  %48 = load i32, i32* %12, align 4
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds i32*, i32** %47, i64 %49
  %51 = load i32*, i32** %50, align 8
  %52 = load i32, i32* %13, align 4
  %53 = sext i32 %52 to i64
  %54 = getelementptr inbounds i32, i32* %51, i64 %53
  %55 = load i32, i32* %54, align 4
  %56 = icmp eq i32 %46, %55
  %57 = zext i1 %56 to i32
  %58 = call i32 @ok(i32 %57, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0))
  br label %59

59:                                               ; preds = %43
  %60 = load i32, i32* %13, align 4
  %61 = add nsw i32 %60, 1
  store i32 %61, i32* %13, align 4
  br label %20

62:                                               ; preds = %20
  br label %63

63:                                               ; preds = %62
  %64 = load i32, i32* %12, align 4
  %65 = add nsw i32 %64, 1
  store i32 %65, i32* %12, align 4
  br label %16

66:                                               ; preds = %16
  store i32 0, i32* %12, align 4
  br label %67

67:                                               ; preds = %118, %66
  %68 = load i32, i32* %12, align 4
  %69 = icmp slt i32 %68, 10
  br i1 %69, label %70, label %121

70:                                               ; preds = %67
  %71 = load i32*, i32** @Uuid_Table, align 8
  %72 = load i32, i32* %12, align 4
  %73 = sext i32 %72 to i64
  %74 = getelementptr inbounds i32, i32* %71, i64 %73
  %75 = load i32, i32* %74, align 4
  store i32 %75, i32* %7, align 4
  %76 = call i64 @UuidToStringA(i32* %7, i8** %3)
  %77 = load i64, i64* @RPC_S_OK, align 8
  %78 = icmp eq i64 %76, %77
  %79 = zext i1 %78 to i32
  %80 = call i32 @ok(i32 %79, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0))
  %81 = load i8*, i8** %3, align 8
  %82 = call i64 @UuidFromStringA(i8* %81, i32* %8)
  %83 = load i64, i64* @RPC_S_OK, align 8
  %84 = icmp eq i64 %82, %83
  %85 = zext i1 %84 to i32
  %86 = call i32 @ok(i32 %85, i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.2, i64 0, i64 0))
  %87 = call i32 @UuidEqual(i32* %7, i32* %8, i64* %11)
  %88 = call i32 @ok(i32 %87, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.3, i64 0, i64 0))
  store i32 0, i32* %13, align 4
  br label %89

89:                                               ; preds = %113, %70
  %90 = load i32, i32* %13, align 4
  %91 = icmp slt i32 %90, 36
  br i1 %91, label %92, label %116

92:                                               ; preds = %89
  %93 = load i8*, i8** %3, align 8
  %94 = load i32, i32* %13, align 4
  %95 = sext i32 %94 to i64
  %96 = getelementptr inbounds i8, i8* %93, i64 %95
  %97 = load i8, i8* %96, align 1
  store i8 %97, i8* %2, align 1
  %98 = load i8*, i8** %3, align 8
  %99 = load i32, i32* %13, align 4
  %100 = sext i32 %99 to i64
  %101 = getelementptr inbounds i8, i8* %98, i64 %100
  store i8 103, i8* %101, align 1
  %102 = load i8*, i8** %3, align 8
  %103 = call i64 @UuidFromStringA(i8* %102, i32* %7)
  %104 = load i64, i64* @RPC_S_INVALID_STRING_UUID, align 8
  %105 = icmp eq i64 %103, %104
  %106 = zext i1 %105 to i32
  %107 = call i32 @ok(i32 %106, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.4, i64 0, i64 0))
  %108 = load i8, i8* %2, align 1
  %109 = load i8*, i8** %3, align 8
  %110 = load i32, i32* %13, align 4
  %111 = sext i32 %110 to i64
  %112 = getelementptr inbounds i8, i8* %109, i64 %111
  store i8 %108, i8* %112, align 1
  br label %113

113:                                              ; preds = %92
  %114 = load i32, i32* %13, align 4
  %115 = add nsw i32 %114, 1
  store i32 %115, i32* %13, align 4
  br label %89

116:                                              ; preds = %89
  %117 = call i32 @RpcStringFreeA(i8** %3)
  br label %118

118:                                              ; preds = %116
  %119 = load i32, i32* %12, align 4
  %120 = add nsw i32 %119, 1
  store i32 %120, i32* %12, align 4
  br label %67

121:                                              ; preds = %67
  store i32 0, i32* %12, align 4
  br label %122

122:                                              ; preds = %174, %121
  %123 = load i32, i32* %12, align 4
  %124 = icmp slt i32 %123, 10
  br i1 %124, label %125, label %177

125:                                              ; preds = %122
  %126 = load i32*, i32** @Uuid_Table, align 8
  %127 = load i32, i32* %12, align 4
  %128 = sext i32 %127 to i64
  %129 = getelementptr inbounds i32, i32* %126, i64 %128
  %130 = load i32, i32* %129, align 4
  store i32 %130, i32* %7, align 4
  %131 = call i64 @UuidToStringW(i32* %7, i8** %6)
  store i64 %131, i64* %11, align 8
  %132 = load i64, i64* %11, align 8
  %133 = load i64, i64* @RPC_S_OK, align 8
  %134 = icmp eq i64 %132, %133
  %135 = zext i1 %134 to i32
  %136 = call i32 @ok(i32 %135, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.5, i64 0, i64 0))
  %137 = load i8*, i8** %6, align 8
  %138 = call i64 @UuidFromStringW(i8* %137, i32* %8)
  %139 = load i64, i64* @RPC_S_OK, align 8
  %140 = icmp eq i64 %138, %139
  %141 = zext i1 %140 to i32
  %142 = call i32 @ok(i32 %141, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.6, i64 0, i64 0))
  %143 = call i32 @UuidEqual(i32* %7, i32* %8, i64* %11)
  %144 = call i32 @ok(i32 %143, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.7, i64 0, i64 0))
  store i32 0, i32* %13, align 4
  br label %145

145:                                              ; preds = %169, %125
  %146 = load i32, i32* %13, align 4
  %147 = icmp slt i32 %146, 36
  br i1 %147, label %148, label %172

148:                                              ; preds = %145
  %149 = load i8*, i8** %6, align 8
  %150 = load i32, i32* %13, align 4
  %151 = sext i32 %150 to i64
  %152 = getelementptr inbounds i8, i8* %149, i64 %151
  %153 = load i8, i8* %152, align 1
  store i8 %153, i8* %5, align 1
  %154 = load i8*, i8** %6, align 8
  %155 = load i32, i32* %13, align 4
  %156 = sext i32 %155 to i64
  %157 = getelementptr inbounds i8, i8* %154, i64 %156
  store i8 103, i8* %157, align 1
  %158 = load i8*, i8** %6, align 8
  %159 = call i64 @UuidFromStringW(i8* %158, i32* %7)
  %160 = load i64, i64* @RPC_S_INVALID_STRING_UUID, align 8
  %161 = icmp eq i64 %159, %160
  %162 = zext i1 %161 to i32
  %163 = call i32 @ok(i32 %162, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.8, i64 0, i64 0))
  %164 = load i8, i8* %5, align 1
  %165 = load i8*, i8** %6, align 8
  %166 = load i32, i32* %13, align 4
  %167 = sext i32 %166 to i64
  %168 = getelementptr inbounds i8, i8* %165, i64 %167
  store i8 %164, i8* %168, align 1
  br label %169

169:                                              ; preds = %148
  %170 = load i32, i32* %13, align 4
  %171 = add nsw i32 %170, 1
  store i32 %171, i32* %13, align 4
  br label %145

172:                                              ; preds = %145
  %173 = call i32 @RpcStringFreeW(i8** %6)
  br label %174

174:                                              ; preds = %172
  %175 = load i32, i32* %12, align 4
  %176 = add nsw i32 %175, 1
  store i32 %176, i32* %12, align 4
  br label %122

177:                                              ; preds = %122
  ret void
}

declare dso_local i32 @ok(i32, i8*) #1

declare dso_local i32 @UuidEqual(i32*, i32*, i64*) #1

declare dso_local i64 @UuidToStringA(i32*, i8**) #1

declare dso_local i64 @UuidFromStringA(i8*, i32*) #1

declare dso_local i32 @RpcStringFreeA(i8**) #1

declare dso_local i64 @UuidToStringW(i32*, i8**) #1

declare dso_local i64 @UuidFromStringW(i8*, i32*) #1

declare dso_local i32 @RpcStringFreeW(i8**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
