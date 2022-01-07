; ModuleID = '/home/carl/AnghaBench/reactos/sdk/lib/drivers/lwip/src/core/ipv4/extr_ip_addr.c_ipaddr_aton.c'
source_filename = "/home/carl/AnghaBench/reactos/sdk/lib/drivers/lwip/src/core/ipv4/extr_ip_addr.c_ipaddr_aton.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [10 x i8] c"unhandled\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ipaddr_aton(i8* %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i8, align 1
  %9 = alloca [4 x i32], align 16
  %10 = alloca i32*, align 8
  store i8* %0, i8** %4, align 8
  store i32* %1, i32** %5, align 8
  %11 = getelementptr inbounds [4 x i32], [4 x i32]* %9, i64 0, i64 0
  store i32* %11, i32** %10, align 8
  %12 = load i8*, i8** %4, align 8
  %13 = load i8, i8* %12, align 1
  store i8 %13, i8* %8, align 1
  br label %14

14:                                               ; preds = %100, %2
  %15 = load i8, i8* %8, align 1
  %16 = call i64 @isdigit(i8 signext %15)
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %19, label %18

18:                                               ; preds = %14
  store i32 0, i32* %3, align 4
  br label %174

19:                                               ; preds = %14
  store i32 0, i32* %6, align 4
  store i32 10, i32* %7, align 4
  %20 = load i8, i8* %8, align 1
  %21 = sext i8 %20 to i32
  %22 = icmp eq i32 %21, 48
  br i1 %22, label %23, label %40

23:                                               ; preds = %19
  %24 = load i8*, i8** %4, align 8
  %25 = getelementptr inbounds i8, i8* %24, i32 1
  store i8* %25, i8** %4, align 8
  %26 = load i8, i8* %25, align 1
  store i8 %26, i8* %8, align 1
  %27 = load i8, i8* %8, align 1
  %28 = sext i8 %27 to i32
  %29 = icmp eq i32 %28, 120
  br i1 %29, label %34, label %30

30:                                               ; preds = %23
  %31 = load i8, i8* %8, align 1
  %32 = sext i8 %31 to i32
  %33 = icmp eq i32 %32, 88
  br i1 %33, label %34, label %38

34:                                               ; preds = %30, %23
  store i32 16, i32* %7, align 4
  %35 = load i8*, i8** %4, align 8
  %36 = getelementptr inbounds i8, i8* %35, i32 1
  store i8* %36, i8** %4, align 8
  %37 = load i8, i8* %36, align 1
  store i8 %37, i8* %8, align 1
  br label %39

38:                                               ; preds = %30
  store i32 8, i32* %7, align 4
  br label %39

39:                                               ; preds = %38, %34
  br label %40

40:                                               ; preds = %39, %19
  br label %41

41:                                               ; preds = %81, %40
  %42 = load i8, i8* %8, align 1
  %43 = call i64 @isdigit(i8 signext %42)
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %56

45:                                               ; preds = %41
  %46 = load i32, i32* %6, align 4
  %47 = load i32, i32* %7, align 4
  %48 = mul nsw i32 %46, %47
  %49 = load i8, i8* %8, align 1
  %50 = sext i8 %49 to i32
  %51 = sub nsw i32 %50, 48
  %52 = add nsw i32 %48, %51
  store i32 %52, i32* %6, align 4
  %53 = load i8*, i8** %4, align 8
  %54 = getelementptr inbounds i8, i8* %53, i32 1
  store i8* %54, i8** %4, align 8
  %55 = load i8, i8* %54, align 1
  store i8 %55, i8* %8, align 1
  br label %81

56:                                               ; preds = %41
  %57 = load i32, i32* %7, align 4
  %58 = icmp eq i32 %57, 16
  br i1 %58, label %59, label %79

59:                                               ; preds = %56
  %60 = load i8, i8* %8, align 1
  %61 = call i64 @isxdigit(i8 signext %60)
  %62 = icmp ne i64 %61, 0
  br i1 %62, label %63, label %79

63:                                               ; preds = %59
  %64 = load i32, i32* %6, align 4
  %65 = shl i32 %64, 4
  %66 = load i8, i8* %8, align 1
  %67 = sext i8 %66 to i32
  %68 = add nsw i32 %67, 10
  %69 = load i8, i8* %8, align 1
  %70 = call i64 @islower(i8 signext %69)
  %71 = icmp ne i64 %70, 0
  %72 = zext i1 %71 to i64
  %73 = select i1 %71, i32 97, i32 65
  %74 = sub nsw i32 %68, %73
  %75 = or i32 %65, %74
  store i32 %75, i32* %6, align 4
  %76 = load i8*, i8** %4, align 8
  %77 = getelementptr inbounds i8, i8* %76, i32 1
  store i8* %77, i8** %4, align 8
  %78 = load i8, i8* %77, align 1
  store i8 %78, i8* %8, align 1
  br label %80

79:                                               ; preds = %59, %56
  br label %82

80:                                               ; preds = %63
  br label %81

81:                                               ; preds = %80, %45
  br label %41

82:                                               ; preds = %79
  %83 = load i8, i8* %8, align 1
  %84 = sext i8 %83 to i32
  %85 = icmp eq i32 %84, 46
  br i1 %85, label %86, label %99

86:                                               ; preds = %82
  %87 = load i32*, i32** %10, align 8
  %88 = getelementptr inbounds [4 x i32], [4 x i32]* %9, i64 0, i64 0
  %89 = getelementptr inbounds i32, i32* %88, i64 3
  %90 = icmp uge i32* %87, %89
  br i1 %90, label %91, label %92

91:                                               ; preds = %86
  store i32 0, i32* %3, align 4
  br label %174

92:                                               ; preds = %86
  %93 = load i32, i32* %6, align 4
  %94 = load i32*, i32** %10, align 8
  %95 = getelementptr inbounds i32, i32* %94, i32 1
  store i32* %95, i32** %10, align 8
  store i32 %93, i32* %94, align 4
  %96 = load i8*, i8** %4, align 8
  %97 = getelementptr inbounds i8, i8* %96, i32 1
  store i8* %97, i8** %4, align 8
  %98 = load i8, i8* %97, align 1
  store i8 %98, i8* %8, align 1
  br label %100

99:                                               ; preds = %82
  br label %101

100:                                              ; preds = %92
  br label %14

101:                                              ; preds = %99
  %102 = load i8, i8* %8, align 1
  %103 = sext i8 %102 to i32
  %104 = icmp ne i32 %103, 0
  br i1 %104, label %105, label %110

105:                                              ; preds = %101
  %106 = load i8, i8* %8, align 1
  %107 = call i32 @isspace(i8 signext %106)
  %108 = icmp ne i32 %107, 0
  br i1 %108, label %110, label %109

109:                                              ; preds = %105
  store i32 0, i32* %3, align 4
  br label %174

110:                                              ; preds = %105, %101
  %111 = load i32*, i32** %10, align 8
  %112 = getelementptr inbounds [4 x i32], [4 x i32]* %9, i64 0, i64 0
  %113 = ptrtoint i32* %111 to i64
  %114 = ptrtoint i32* %112 to i64
  %115 = sub i64 %113, %114
  %116 = sdiv exact i64 %115, 4
  %117 = add nsw i64 %116, 1
  switch i64 %117, label %163 [
    i64 0, label %118
    i64 1, label %119
    i64 2, label %120
    i64 3, label %131
    i64 4, label %145
  ]

118:                                              ; preds = %110
  store i32 0, i32* %3, align 4
  br label %174

119:                                              ; preds = %110
  br label %165

120:                                              ; preds = %110
  %121 = load i32, i32* %6, align 4
  %122 = sext i32 %121 to i64
  %123 = icmp ugt i64 %122, 16777215
  br i1 %123, label %124, label %125

124:                                              ; preds = %120
  store i32 0, i32* %3, align 4
  br label %174

125:                                              ; preds = %120
  %126 = getelementptr inbounds [4 x i32], [4 x i32]* %9, i64 0, i64 0
  %127 = load i32, i32* %126, align 16
  %128 = shl i32 %127, 24
  %129 = load i32, i32* %6, align 4
  %130 = or i32 %129, %128
  store i32 %130, i32* %6, align 4
  br label %165

131:                                              ; preds = %110
  %132 = load i32, i32* %6, align 4
  %133 = icmp sgt i32 %132, 65535
  br i1 %133, label %134, label %135

134:                                              ; preds = %131
  store i32 0, i32* %3, align 4
  br label %174

135:                                              ; preds = %131
  %136 = getelementptr inbounds [4 x i32], [4 x i32]* %9, i64 0, i64 0
  %137 = load i32, i32* %136, align 16
  %138 = shl i32 %137, 24
  %139 = getelementptr inbounds [4 x i32], [4 x i32]* %9, i64 0, i64 1
  %140 = load i32, i32* %139, align 4
  %141 = shl i32 %140, 16
  %142 = or i32 %138, %141
  %143 = load i32, i32* %6, align 4
  %144 = or i32 %143, %142
  store i32 %144, i32* %6, align 4
  br label %165

145:                                              ; preds = %110
  %146 = load i32, i32* %6, align 4
  %147 = icmp sgt i32 %146, 255
  br i1 %147, label %148, label %149

148:                                              ; preds = %145
  store i32 0, i32* %3, align 4
  br label %174

149:                                              ; preds = %145
  %150 = getelementptr inbounds [4 x i32], [4 x i32]* %9, i64 0, i64 0
  %151 = load i32, i32* %150, align 16
  %152 = shl i32 %151, 24
  %153 = getelementptr inbounds [4 x i32], [4 x i32]* %9, i64 0, i64 1
  %154 = load i32, i32* %153, align 4
  %155 = shl i32 %154, 16
  %156 = or i32 %152, %155
  %157 = getelementptr inbounds [4 x i32], [4 x i32]* %9, i64 0, i64 2
  %158 = load i32, i32* %157, align 8
  %159 = shl i32 %158, 8
  %160 = or i32 %156, %159
  %161 = load i32, i32* %6, align 4
  %162 = or i32 %161, %160
  store i32 %162, i32* %6, align 4
  br label %165

163:                                              ; preds = %110
  %164 = call i32 @LWIP_ASSERT(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i32 0)
  br label %165

165:                                              ; preds = %163, %149, %135, %125, %119
  %166 = load i32*, i32** %5, align 8
  %167 = icmp ne i32* %166, null
  br i1 %167, label %168, label %173

168:                                              ; preds = %165
  %169 = load i32*, i32** %5, align 8
  %170 = load i32, i32* %6, align 4
  %171 = call i32 @htonl(i32 %170)
  %172 = call i32 @ip4_addr_set_u32(i32* %169, i32 %171)
  br label %173

173:                                              ; preds = %168, %165
  store i32 1, i32* %3, align 4
  br label %174

174:                                              ; preds = %173, %148, %134, %124, %118, %109, %91, %18
  %175 = load i32, i32* %3, align 4
  ret i32 %175
}

declare dso_local i64 @isdigit(i8 signext) #1

declare dso_local i64 @isxdigit(i8 signext) #1

declare dso_local i64 @islower(i8 signext) #1

declare dso_local i32 @isspace(i8 signext) #1

declare dso_local i32 @LWIP_ASSERT(i8*, i32) #1

declare dso_local i32 @ip4_addr_set_u32(i32*, i32) #1

declare dso_local i32 @htonl(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
