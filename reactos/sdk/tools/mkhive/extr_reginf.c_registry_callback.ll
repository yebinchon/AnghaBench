; ModuleID = '/home/carl/AnghaBench/reactos/sdk/tools/mkhive/extr_reginf.c_registry_callback.c'
source_filename = "/home/carl/AnghaBench/reactos/sdk/tools/mkhive/extr_reginf.c_registry_callback.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@MAX_INF_STRING_LENGTH = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [15 x i8] c"KeyName: <%S>\0A\00", align 1
@FLG_ADDREG_DELREG_BIT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [13 x i8] c"Flags: 0x%x\0A\00", align 1
@FLG_ADDREG_OVERWRITEONLY = common dso_local global i32 0, align 4
@ERROR_SUCCESS = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [23 x i8] c"RegOpenKey(%S) failed\0A\00", align 1
@.str.3 = private unnamed_addr constant [25 x i8] c"RegCreateKey(%S) failed\0A\00", align 1
@FALSE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32, i32)* @registry_callback to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @registry_callback(i32 %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i64, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %17 = load i32, i32* @MAX_INF_STRING_LENGTH, align 4
  %18 = zext i32 %17 to i64
  %19 = call i8* @llvm.stacksave()
  store i8* %19, i8** %8, align 8
  %20 = alloca i64, i64 %18, align 16
  store i64 %18, i64* %9, align 8
  store i32* null, i32** %13, align 8
  %21 = load i32, i32* %5, align 4
  %22 = load i32, i32* %6, align 4
  %23 = call i64 @InfHostFindFirstLine(i32 %21, i32 %22, i32* null, i32** %13)
  %24 = icmp eq i64 %23, 0
  %25 = zext i1 %24 to i32
  store i32 %25, i32* %15, align 4
  %26 = load i32, i32* %15, align 4
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %30, label %28

28:                                               ; preds = %3
  %29 = load i32, i32* @TRUE, align 4
  store i32 %29, i32* %4, align 4
  store i32 1, i32* %16, align 4
  br label %151

30:                                               ; preds = %3
  %31 = load i32, i32* @TRUE, align 4
  store i32 %31, i32* %15, align 4
  br label %32

32:                                               ; preds = %141, %30
  %33 = load i32, i32* %15, align 4
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %147

35:                                               ; preds = %32
  %36 = load i32*, i32** %13, align 8
  %37 = mul nuw i64 8, %18
  %38 = udiv i64 %37, 8
  %39 = trunc i64 %38 to i32
  %40 = call i64 @InfHostGetStringField(i32* %36, i32 1, i64* %20, i32 %39, i32* null)
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %43

42:                                               ; preds = %35
  br label %141

43:                                               ; preds = %35
  %44 = call i32 @get_root_key(i64* %20)
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %47, label %46

46:                                               ; preds = %43
  br label %141

47:                                               ; preds = %43
  %48 = call i64 @strlenW(i64* %20)
  store i64 %48, i64* %12, align 8
  %49 = load i32*, i32** %13, align 8
  %50 = load i64, i64* %12, align 8
  %51 = getelementptr inbounds i64, i64* %20, i64 %50
  %52 = mul nuw i64 8, %18
  %53 = udiv i64 %52, 8
  %54 = load i64, i64* %12, align 8
  %55 = trunc i64 %54 to i32
  %56 = sext i32 %55 to i64
  %57 = sub i64 %53, %56
  %58 = trunc i64 %57 to i32
  %59 = call i64 @InfHostGetStringField(i32* %49, i32 2, i64* %51, i32 %58, i32* null)
  %60 = icmp ne i64 %59, 0
  br i1 %60, label %61, label %62

61:                                               ; preds = %47
  store i64 0, i64* %20, align 16
  br label %62

62:                                               ; preds = %61, %47
  %63 = ptrtoint i64* %20 to i32
  %64 = call i32 @DPRINT(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0), i32 %63)
  %65 = load i32*, i32** %13, align 8
  %66 = call i64 @InfHostGetIntField(i32* %65, i32 4, i32* %11)
  %67 = icmp ne i64 %66, 0
  br i1 %67, label %68, label %69

68:                                               ; preds = %62
  store i32 0, i32* %11, align 4
  br label %69

69:                                               ; preds = %68, %62
  %70 = load i32, i32* %7, align 4
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %72, label %85

72:                                               ; preds = %69
  %73 = load i32, i32* %11, align 4
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %77, label %75

75:                                               ; preds = %72
  %76 = load i32, i32* @FLG_ADDREG_DELREG_BIT, align 4
  store i32 %76, i32* %11, align 4
  br label %84

77:                                               ; preds = %72
  %78 = load i32, i32* %11, align 4
  %79 = load i32, i32* @FLG_ADDREG_DELREG_BIT, align 4
  %80 = and i32 %78, %79
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %83, label %82

82:                                               ; preds = %77
  br label %141

83:                                               ; preds = %77
  br label %84

84:                                               ; preds = %83, %75
  br label %92

85:                                               ; preds = %69
  %86 = load i32, i32* %11, align 4
  %87 = load i32, i32* @FLG_ADDREG_DELREG_BIT, align 4
  %88 = and i32 %86, %87
  %89 = icmp ne i32 %88, 0
  br i1 %89, label %90, label %91

90:                                               ; preds = %85
  br label %141

91:                                               ; preds = %85
  br label %92

92:                                               ; preds = %91, %84
  %93 = load i32, i32* %11, align 4
  %94 = call i32 @DPRINT(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i64 0, i64 0), i32 %93)
  %95 = load i32, i32* %7, align 4
  %96 = icmp ne i32 %95, 0
  br i1 %96, label %102, label %97

97:                                               ; preds = %92
  %98 = load i32, i32* %11, align 4
  %99 = load i32, i32* @FLG_ADDREG_OVERWRITEONLY, align 4
  %100 = and i32 %98, %99
  %101 = icmp ne i32 %100, 0
  br i1 %101, label %102, label %110

102:                                              ; preds = %97, %92
  %103 = call i64 @RegOpenKeyW(i32* null, i64* %20, i32* %14)
  %104 = load i64, i64* @ERROR_SUCCESS, align 8
  %105 = icmp ne i64 %103, %104
  br i1 %105, label %106, label %109

106:                                              ; preds = %102
  %107 = ptrtoint i64* %20 to i32
  %108 = call i32 @DPRINT(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.2, i64 0, i64 0), i32 %107)
  br label %141

109:                                              ; preds = %102
  br label %118

110:                                              ; preds = %97
  %111 = call i64 @RegCreateKeyW(i32* null, i64* %20, i32* %14)
  %112 = load i64, i64* @ERROR_SUCCESS, align 8
  %113 = icmp ne i64 %111, %112
  br i1 %113, label %114, label %117

114:                                              ; preds = %110
  %115 = ptrtoint i64* %20 to i32
  %116 = call i32 @DPRINT(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.3, i64 0, i64 0), i32 %115)
  br label %141

117:                                              ; preds = %110
  br label %118

118:                                              ; preds = %117, %109
  %119 = load i32*, i32** %13, align 8
  %120 = mul nuw i64 8, %18
  %121 = udiv i64 %120, 8
  %122 = trunc i64 %121 to i32
  %123 = call i64 @InfHostGetStringField(i32* %119, i32 3, i64* %20, i32 %122, i32* null)
  %124 = icmp eq i64 %123, 0
  br i1 %124, label %125, label %126

125:                                              ; preds = %118
  store i64* %20, i64** %10, align 8
  br label %127

126:                                              ; preds = %118
  store i64* null, i64** %10, align 8
  br label %127

127:                                              ; preds = %126, %125
  %128 = load i32, i32* %14, align 4
  %129 = load i64*, i64** %10, align 8
  %130 = load i32*, i32** %13, align 8
  %131 = load i32, i32* %11, align 4
  %132 = call i32 @do_reg_operation(i32 %128, i64* %129, i32* %130, i32 %131)
  %133 = icmp ne i32 %132, 0
  br i1 %133, label %138, label %134

134:                                              ; preds = %127
  %135 = load i32, i32* %14, align 4
  %136 = call i32 @RegCloseKey(i32 %135)
  %137 = load i32, i32* @FALSE, align 4
  store i32 %137, i32* %4, align 4
  store i32 1, i32* %16, align 4
  br label %151

138:                                              ; preds = %127
  %139 = load i32, i32* %14, align 4
  %140 = call i32 @RegCloseKey(i32 %139)
  br label %141

141:                                              ; preds = %138, %114, %106, %90, %82, %46, %42
  %142 = load i32*, i32** %13, align 8
  %143 = load i32*, i32** %13, align 8
  %144 = call i64 @InfHostFindNextLine(i32* %142, i32* %143)
  %145 = icmp eq i64 %144, 0
  %146 = zext i1 %145 to i32
  store i32 %146, i32* %15, align 4
  br label %32

147:                                              ; preds = %32
  %148 = load i32*, i32** %13, align 8
  %149 = call i32 @InfHostFreeContext(i32* %148)
  %150 = load i32, i32* @TRUE, align 4
  store i32 %150, i32* %4, align 4
  store i32 1, i32* %16, align 4
  br label %151

151:                                              ; preds = %147, %134, %28
  %152 = load i8*, i8** %8, align 8
  call void @llvm.stackrestore(i8* %152)
  %153 = load i32, i32* %4, align 4
  ret i32 %153
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i64 @InfHostFindFirstLine(i32, i32, i32*, i32**) #2

declare dso_local i64 @InfHostGetStringField(i32*, i32, i64*, i32, i32*) #2

declare dso_local i32 @get_root_key(i64*) #2

declare dso_local i64 @strlenW(i64*) #2

declare dso_local i32 @DPRINT(i8*, i32) #2

declare dso_local i64 @InfHostGetIntField(i32*, i32, i32*) #2

declare dso_local i64 @RegOpenKeyW(i32*, i64*, i32*) #2

declare dso_local i64 @RegCreateKeyW(i32*, i64*, i32*) #2

declare dso_local i32 @do_reg_operation(i32, i64*, i32*, i32) #2

declare dso_local i32 @RegCloseKey(i32) #2

declare dso_local i64 @InfHostFindNextLine(i32*, i32*) #2

declare dso_local i32 @InfHostFreeContext(i32*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
