; ModuleID = '/home/carl/AnghaBench/vlc/src/network/extr_io.c_net_Listen.c'
source_filename = "/home/carl/AnghaBench/vlc/src/network/extr_io.c_net_Listen.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.addrinfo = type { i32, i32, i32, i32, i32, i32, %struct.addrinfo* }

@AI_PASSIVE = common dso_local global i32 0, align 4
@AI_NUMERICSERV = common dso_local global i32 0, align 4
@AI_IDN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [29 x i8] c"net: listening to %s port %u\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"*\00", align 1
@.str.2 = private unnamed_addr constant [31 x i8] c"Cannot resolve %s port %u : %s\00", align 1
@.str.3 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.4 = private unnamed_addr constant [17 x i8] c"socket error: %s\00", align 1
@net_errno = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [28 x i8] c"got socket %d from rootwrap\00", align 1
@.str.6 = private unnamed_addr constant [22 x i8] c"socket bind error: %s\00", align 1
@INT_MAX = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [24 x i8] c"socket listen error: %s\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @net_Listen(i32* %0, i8* %1, i32 %2, i32 %3, i32 %4) #0 {
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.addrinfo, align 8
  %13 = alloca %struct.addrinfo*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32*, align 8
  %16 = alloca i32, align 4
  %17 = alloca %struct.addrinfo*, align 8
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32*, align 8
  store i32* %0, i32** %7, align 8
  store i8* %1, i8** %8, align 8
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  %21 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %12, i32 0, i32 0
  %22 = load i32, i32* %10, align 4
  store i32 %22, i32* %21, align 8
  %23 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %12, i32 0, i32 1
  %24 = load i32, i32* %11, align 4
  store i32 %24, i32* %23, align 4
  %25 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %12, i32 0, i32 2
  %26 = load i32, i32* @AI_PASSIVE, align 4
  %27 = load i32, i32* @AI_NUMERICSERV, align 4
  %28 = or i32 %26, %27
  %29 = load i32, i32* @AI_IDN, align 4
  %30 = or i32 %28, %29
  store i32 %30, i32* %25, align 8
  %31 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %12, i32 0, i32 3
  store i32 0, i32* %31, align 4
  %32 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %12, i32 0, i32 4
  store i32 0, i32* %32, align 8
  %33 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %12, i32 0, i32 5
  store i32 0, i32* %33, align 4
  %34 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %12, i32 0, i32 6
  store %struct.addrinfo* null, %struct.addrinfo** %34, align 8
  %35 = load i32*, i32** %7, align 8
  %36 = load i8*, i8** %8, align 8
  %37 = icmp ne i8* %36, null
  br i1 %37, label %38, label %40

38:                                               ; preds = %5
  %39 = load i8*, i8** %8, align 8
  br label %41

40:                                               ; preds = %5
  br label %41

41:                                               ; preds = %40, %38
  %42 = phi i8* [ %39, %38 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0), %40 ]
  %43 = load i32, i32* %9, align 4
  %44 = call i32 (i32*, i8*, ...) @msg_Dbg(i32* %35, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), i8* %42, i32 %43)
  %45 = load i8*, i8** %8, align 8
  %46 = load i32, i32* %9, align 4
  %47 = call i32 @vlc_getaddrinfo(i8* %45, i32 %46, %struct.addrinfo* %12, %struct.addrinfo** %13)
  store i32 %47, i32* %14, align 4
  %48 = load i32, i32* %14, align 4
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %63

50:                                               ; preds = %41
  %51 = load i32*, i32** %7, align 8
  %52 = load i8*, i8** %8, align 8
  %53 = icmp ne i8* %52, null
  br i1 %53, label %54, label %56

54:                                               ; preds = %50
  %55 = load i8*, i8** %8, align 8
  br label %57

56:                                               ; preds = %50
  br label %57

57:                                               ; preds = %56, %54
  %58 = phi i8* [ %55, %54 ], [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.3, i64 0, i64 0), %56 ]
  %59 = load i32, i32* %9, align 4
  %60 = load i32, i32* %14, align 4
  %61 = call i32 @gai_strerror(i32 %60)
  %62 = call i32 (i32*, i8*, ...) @msg_Err(i32* %51, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.2, i64 0, i64 0), i8* %58, i32 %59, i32 %61)
  store i32* null, i32** %6, align 8
  br label %180

63:                                               ; preds = %41
  store i32* null, i32** %15, align 8
  store i32 0, i32* %16, align 4
  %64 = load %struct.addrinfo*, %struct.addrinfo** %13, align 8
  store %struct.addrinfo* %64, %struct.addrinfo** %17, align 8
  br label %65

65:                                               ; preds = %164, %63
  %66 = load %struct.addrinfo*, %struct.addrinfo** %17, align 8
  %67 = icmp ne %struct.addrinfo* %66, null
  br i1 %67, label %68, label %168

68:                                               ; preds = %65
  %69 = load i32*, i32** %7, align 8
  %70 = load %struct.addrinfo*, %struct.addrinfo** %17, align 8
  %71 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %70, i32 0, i32 5
  %72 = load i32, i32* %71, align 4
  %73 = load %struct.addrinfo*, %struct.addrinfo** %17, align 8
  %74 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 8
  %76 = load %struct.addrinfo*, %struct.addrinfo** %17, align 8
  %77 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %76, i32 0, i32 1
  %78 = load i32, i32* %77, align 4
  %79 = call i32 @net_Socket(i32* %69, i32 %72, i32 %75, i32 %78)
  store i32 %79, i32* %18, align 4
  %80 = load i32, i32* %18, align 4
  %81 = icmp eq i32 %80, -1
  br i1 %81, label %82, label %87

82:                                               ; preds = %68
  %83 = load i32*, i32** %7, align 8
  %84 = load i32, i32* @net_errno, align 4
  %85 = call i32 @vlc_strerror_c(i32 %84)
  %86 = call i32 (i32*, i8*, ...) @msg_Dbg(i32* %83, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.4, i64 0, i64 0), i32 %85)
  br label %164

87:                                               ; preds = %68
  %88 = load i32, i32* %18, align 4
  %89 = load %struct.addrinfo*, %struct.addrinfo** %17, align 8
  %90 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %89, i32 0, i32 4
  %91 = load i32, i32* %90, align 8
  %92 = load %struct.addrinfo*, %struct.addrinfo** %17, align 8
  %93 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %92, i32 0, i32 3
  %94 = load i32, i32* %93, align 4
  %95 = call i64 @bind(i32 %88, i32 %91, i32 %94)
  %96 = icmp ne i64 %95, 0
  br i1 %96, label %97, label %129

97:                                               ; preds = %87
  %98 = load i32, i32* @net_errno, align 4
  store i32 %98, i32* %19, align 4
  %99 = load i32, i32* %18, align 4
  %100 = call i32 @net_Close(i32 %99)
  %101 = load %struct.addrinfo*, %struct.addrinfo** %17, align 8
  %102 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %101, i32 0, i32 5
  %103 = load i32, i32* %102, align 4
  %104 = load %struct.addrinfo*, %struct.addrinfo** %17, align 8
  %105 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %104, i32 0, i32 0
  %106 = load i32, i32* %105, align 8
  %107 = load %struct.addrinfo*, %struct.addrinfo** %17, align 8
  %108 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %107, i32 0, i32 1
  %109 = load i32, i32* %108, align 4
  %110 = load %struct.addrinfo*, %struct.addrinfo** %17, align 8
  %111 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %110, i32 0, i32 4
  %112 = load i32, i32* %111, align 8
  %113 = load %struct.addrinfo*, %struct.addrinfo** %17, align 8
  %114 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %113, i32 0, i32 3
  %115 = load i32, i32* %114, align 4
  %116 = call i32 @rootwrap_bind(i32 %103, i32 %106, i32 %109, i32 %112, i32 %115)
  store i32 %116, i32* %18, align 4
  %117 = load i32, i32* %18, align 4
  %118 = icmp ne i32 %117, -1
  br i1 %118, label %119, label %123

119:                                              ; preds = %97
  %120 = load i32*, i32** %7, align 8
  %121 = load i32, i32* %18, align 4
  %122 = call i32 (i32*, i8*, ...) @msg_Dbg(i32* %120, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.5, i64 0, i64 0), i32 %121)
  br label %128

123:                                              ; preds = %97
  %124 = load i32*, i32** %7, align 8
  %125 = load i32, i32* %19, align 4
  %126 = call i32 @vlc_strerror_c(i32 %125)
  %127 = call i32 (i32*, i8*, ...) @msg_Err(i32* %124, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.6, i64 0, i64 0), i32 %126)
  br label %164

128:                                              ; preds = %119
  br label %129

129:                                              ; preds = %128, %87
  %130 = load i32, i32* %18, align 4
  %131 = load i32, i32* @INT_MAX, align 4
  %132 = call i64 @listen(i32 %130, i32 %131)
  %133 = icmp ne i64 %132, 0
  br i1 %133, label %134, label %141

134:                                              ; preds = %129
  %135 = load i32*, i32** %7, align 8
  %136 = load i32, i32* @net_errno, align 4
  %137 = call i32 @vlc_strerror_c(i32 %136)
  %138 = call i32 (i32*, i8*, ...) @msg_Err(i32* %135, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.7, i64 0, i64 0), i32 %137)
  %139 = load i32, i32* %18, align 4
  %140 = call i32 @net_Close(i32 %139)
  br label %164

141:                                              ; preds = %129
  %142 = load i32*, i32** %15, align 8
  %143 = load i32, i32* %16, align 4
  %144 = add i32 %143, 2
  %145 = zext i32 %144 to i64
  %146 = mul i64 %145, 4
  %147 = trunc i64 %146 to i32
  %148 = call i64 @realloc(i32* %142, i32 %147)
  %149 = inttoptr i64 %148 to i32*
  store i32* %149, i32** %20, align 8
  %150 = load i32*, i32** %20, align 8
  %151 = icmp ne i32* %150, null
  br i1 %151, label %152, label %160

152:                                              ; preds = %141
  %153 = load i32, i32* %18, align 4
  %154 = load i32*, i32** %20, align 8
  %155 = load i32, i32* %16, align 4
  %156 = add i32 %155, 1
  store i32 %156, i32* %16, align 4
  %157 = zext i32 %155 to i64
  %158 = getelementptr inbounds i32, i32* %154, i64 %157
  store i32 %153, i32* %158, align 4
  %159 = load i32*, i32** %20, align 8
  store i32* %159, i32** %15, align 8
  br label %163

160:                                              ; preds = %141
  %161 = load i32, i32* %18, align 4
  %162 = call i32 @net_Close(i32 %161)
  br label %163

163:                                              ; preds = %160, %152
  br label %164

164:                                              ; preds = %163, %134, %123, %82
  %165 = load %struct.addrinfo*, %struct.addrinfo** %17, align 8
  %166 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %165, i32 0, i32 6
  %167 = load %struct.addrinfo*, %struct.addrinfo** %166, align 8
  store %struct.addrinfo* %167, %struct.addrinfo** %17, align 8
  br label %65

168:                                              ; preds = %65
  %169 = load %struct.addrinfo*, %struct.addrinfo** %13, align 8
  %170 = call i32 @freeaddrinfo(%struct.addrinfo* %169)
  %171 = load i32*, i32** %15, align 8
  %172 = icmp ne i32* %171, null
  br i1 %172, label %173, label %178

173:                                              ; preds = %168
  %174 = load i32*, i32** %15, align 8
  %175 = load i32, i32* %16, align 4
  %176 = zext i32 %175 to i64
  %177 = getelementptr inbounds i32, i32* %174, i64 %176
  store i32 -1, i32* %177, align 4
  br label %178

178:                                              ; preds = %173, %168
  %179 = load i32*, i32** %15, align 8
  store i32* %179, i32** %6, align 8
  br label %180

180:                                              ; preds = %178, %57
  %181 = load i32*, i32** %6, align 8
  ret i32* %181
}

declare dso_local i32 @msg_Dbg(i32*, i8*, ...) #1

declare dso_local i32 @vlc_getaddrinfo(i8*, i32, %struct.addrinfo*, %struct.addrinfo**) #1

declare dso_local i32 @msg_Err(i32*, i8*, ...) #1

declare dso_local i32 @gai_strerror(i32) #1

declare dso_local i32 @net_Socket(i32*, i32, i32, i32) #1

declare dso_local i32 @vlc_strerror_c(i32) #1

declare dso_local i64 @bind(i32, i32, i32) #1

declare dso_local i32 @net_Close(i32) #1

declare dso_local i32 @rootwrap_bind(i32, i32, i32, i32, i32) #1

declare dso_local i64 @listen(i32, i32) #1

declare dso_local i64 @realloc(i32*, i32) #1

declare dso_local i32 @freeaddrinfo(%struct.addrinfo*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
