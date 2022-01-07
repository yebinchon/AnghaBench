; ModuleID = '/home/carl/AnghaBench/skynet/lualib-src/extr_lua-socket.c_pop_lstring.c'
source_filename = "/home/carl/AnghaBench/skynet/lualib-src/extr_lua-socket.c_pop_lstring.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.socket_buffer = type { i32, %struct.buffer_node* }
%struct.buffer_node = type { i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, %struct.socket_buffer*, i32, i32)* @pop_lstring to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @pop_lstring(i32* %0, %struct.socket_buffer* %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32*, align 8
  %6 = alloca %struct.socket_buffer*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.buffer_node*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store i32* %0, i32** %5, align 8
  store %struct.socket_buffer* %1, %struct.socket_buffer** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %13 = load %struct.socket_buffer*, %struct.socket_buffer** %6, align 8
  %14 = getelementptr inbounds %struct.socket_buffer, %struct.socket_buffer* %13, i32 0, i32 1
  %15 = load %struct.buffer_node*, %struct.buffer_node** %14, align 8
  store %struct.buffer_node* %15, %struct.buffer_node** %9, align 8
  %16 = load i32, i32* %7, align 4
  %17 = load %struct.buffer_node*, %struct.buffer_node** %9, align 8
  %18 = getelementptr inbounds %struct.buffer_node, %struct.buffer_node* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = load %struct.socket_buffer*, %struct.socket_buffer** %6, align 8
  %21 = getelementptr inbounds %struct.socket_buffer, %struct.socket_buffer* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = sub nsw i32 %19, %22
  %24 = icmp slt i32 %16, %23
  br i1 %24, label %25, label %43

25:                                               ; preds = %4
  %26 = load i32*, i32** %5, align 8
  %27 = load %struct.buffer_node*, %struct.buffer_node** %9, align 8
  %28 = getelementptr inbounds %struct.buffer_node, %struct.buffer_node* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 4
  %30 = load %struct.socket_buffer*, %struct.socket_buffer** %6, align 8
  %31 = getelementptr inbounds %struct.socket_buffer, %struct.socket_buffer* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = add nsw i32 %29, %32
  %34 = load i32, i32* %7, align 4
  %35 = load i32, i32* %8, align 4
  %36 = sub nsw i32 %34, %35
  %37 = call i32 @lua_pushlstring(i32* %26, i32 %33, i32 %36)
  %38 = load i32, i32* %7, align 4
  %39 = load %struct.socket_buffer*, %struct.socket_buffer** %6, align 8
  %40 = getelementptr inbounds %struct.socket_buffer, %struct.socket_buffer* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 8
  %42 = add nsw i32 %41, %38
  store i32 %42, i32* %40, align 8
  br label %155

43:                                               ; preds = %4
  %44 = load i32, i32* %7, align 4
  %45 = load %struct.buffer_node*, %struct.buffer_node** %9, align 8
  %46 = getelementptr inbounds %struct.buffer_node, %struct.buffer_node* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = load %struct.socket_buffer*, %struct.socket_buffer** %6, align 8
  %49 = getelementptr inbounds %struct.socket_buffer, %struct.socket_buffer* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 8
  %51 = sub nsw i32 %47, %50
  %52 = icmp eq i32 %44, %51
  br i1 %52, label %53, label %69

53:                                               ; preds = %43
  %54 = load i32*, i32** %5, align 8
  %55 = load %struct.buffer_node*, %struct.buffer_node** %9, align 8
  %56 = getelementptr inbounds %struct.buffer_node, %struct.buffer_node* %55, i32 0, i32 1
  %57 = load i32, i32* %56, align 4
  %58 = load %struct.socket_buffer*, %struct.socket_buffer** %6, align 8
  %59 = getelementptr inbounds %struct.socket_buffer, %struct.socket_buffer* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 8
  %61 = add nsw i32 %57, %60
  %62 = load i32, i32* %7, align 4
  %63 = load i32, i32* %8, align 4
  %64 = sub nsw i32 %62, %63
  %65 = call i32 @lua_pushlstring(i32* %54, i32 %61, i32 %64)
  %66 = load i32*, i32** %5, align 8
  %67 = load %struct.socket_buffer*, %struct.socket_buffer** %6, align 8
  %68 = call i32 @return_free_node(i32* %66, i32 2, %struct.socket_buffer* %67)
  br label %155

69:                                               ; preds = %43
  %70 = load i32*, i32** %5, align 8
  %71 = call i32 @luaL_buffinit(i32* %70, i32* %10)
  br label %72

72:                                               ; preds = %147, %69
  %73 = load %struct.buffer_node*, %struct.buffer_node** %9, align 8
  %74 = getelementptr inbounds %struct.buffer_node, %struct.buffer_node* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 4
  %76 = load %struct.socket_buffer*, %struct.socket_buffer** %6, align 8
  %77 = getelementptr inbounds %struct.socket_buffer, %struct.socket_buffer* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 8
  %79 = sub nsw i32 %75, %78
  store i32 %79, i32* %11, align 4
  %80 = load i32, i32* %11, align 4
  %81 = load i32, i32* %7, align 4
  %82 = icmp sge i32 %80, %81
  br i1 %82, label %83, label %113

83:                                               ; preds = %72
  %84 = load i32, i32* %7, align 4
  %85 = load i32, i32* %8, align 4
  %86 = icmp sgt i32 %84, %85
  br i1 %86, label %87, label %99

87:                                               ; preds = %83
  %88 = load %struct.buffer_node*, %struct.buffer_node** %9, align 8
  %89 = getelementptr inbounds %struct.buffer_node, %struct.buffer_node* %88, i32 0, i32 1
  %90 = load i32, i32* %89, align 4
  %91 = load %struct.socket_buffer*, %struct.socket_buffer** %6, align 8
  %92 = getelementptr inbounds %struct.socket_buffer, %struct.socket_buffer* %91, i32 0, i32 0
  %93 = load i32, i32* %92, align 8
  %94 = add nsw i32 %90, %93
  %95 = load i32, i32* %7, align 4
  %96 = load i32, i32* %8, align 4
  %97 = sub nsw i32 %95, %96
  %98 = call i32 @luaL_addlstring(i32* %10, i32 %94, i32 %97)
  br label %99

99:                                               ; preds = %87, %83
  %100 = load i32, i32* %7, align 4
  %101 = load %struct.socket_buffer*, %struct.socket_buffer** %6, align 8
  %102 = getelementptr inbounds %struct.socket_buffer, %struct.socket_buffer* %101, i32 0, i32 0
  %103 = load i32, i32* %102, align 8
  %104 = add nsw i32 %103, %100
  store i32 %104, i32* %102, align 8
  %105 = load i32, i32* %11, align 4
  %106 = load i32, i32* %7, align 4
  %107 = icmp eq i32 %105, %106
  br i1 %107, label %108, label %112

108:                                              ; preds = %99
  %109 = load i32*, i32** %5, align 8
  %110 = load %struct.socket_buffer*, %struct.socket_buffer** %6, align 8
  %111 = call i32 @return_free_node(i32* %109, i32 2, %struct.socket_buffer* %110)
  br label %112

112:                                              ; preds = %108, %99
  br label %153

113:                                              ; preds = %72
  %114 = load i32, i32* %7, align 4
  %115 = load i32, i32* %8, align 4
  %116 = sub nsw i32 %114, %115
  store i32 %116, i32* %12, align 4
  %117 = load i32, i32* %12, align 4
  %118 = icmp sgt i32 %117, 0
  br i1 %118, label %119, label %137

119:                                              ; preds = %113
  %120 = load %struct.buffer_node*, %struct.buffer_node** %9, align 8
  %121 = getelementptr inbounds %struct.buffer_node, %struct.buffer_node* %120, i32 0, i32 1
  %122 = load i32, i32* %121, align 4
  %123 = load %struct.socket_buffer*, %struct.socket_buffer** %6, align 8
  %124 = getelementptr inbounds %struct.socket_buffer, %struct.socket_buffer* %123, i32 0, i32 0
  %125 = load i32, i32* %124, align 8
  %126 = add nsw i32 %122, %125
  %127 = load i32, i32* %12, align 4
  %128 = load i32, i32* %11, align 4
  %129 = icmp slt i32 %127, %128
  br i1 %129, label %130, label %132

130:                                              ; preds = %119
  %131 = load i32, i32* %12, align 4
  br label %134

132:                                              ; preds = %119
  %133 = load i32, i32* %11, align 4
  br label %134

134:                                              ; preds = %132, %130
  %135 = phi i32 [ %131, %130 ], [ %133, %132 ]
  %136 = call i32 @luaL_addlstring(i32* %10, i32 %126, i32 %135)
  br label %137

137:                                              ; preds = %134, %113
  %138 = load i32*, i32** %5, align 8
  %139 = load %struct.socket_buffer*, %struct.socket_buffer** %6, align 8
  %140 = call i32 @return_free_node(i32* %138, i32 2, %struct.socket_buffer* %139)
  %141 = load i32, i32* %11, align 4
  %142 = load i32, i32* %7, align 4
  %143 = sub nsw i32 %142, %141
  store i32 %143, i32* %7, align 4
  %144 = load i32, i32* %7, align 4
  %145 = icmp eq i32 %144, 0
  br i1 %145, label %146, label %147

146:                                              ; preds = %137
  br label %153

147:                                              ; preds = %137
  %148 = load %struct.socket_buffer*, %struct.socket_buffer** %6, align 8
  %149 = getelementptr inbounds %struct.socket_buffer, %struct.socket_buffer* %148, i32 0, i32 1
  %150 = load %struct.buffer_node*, %struct.buffer_node** %149, align 8
  store %struct.buffer_node* %150, %struct.buffer_node** %9, align 8
  %151 = load %struct.buffer_node*, %struct.buffer_node** %9, align 8
  %152 = call i32 @assert(%struct.buffer_node* %151)
  br label %72

153:                                              ; preds = %146, %112
  %154 = call i32 @luaL_pushresult(i32* %10)
  br label %155

155:                                              ; preds = %153, %53, %25
  ret void
}

declare dso_local i32 @lua_pushlstring(i32*, i32, i32) #1

declare dso_local i32 @return_free_node(i32*, i32, %struct.socket_buffer*) #1

declare dso_local i32 @luaL_buffinit(i32*, i32*) #1

declare dso_local i32 @luaL_addlstring(i32*, i32, i32) #1

declare dso_local i32 @assert(%struct.buffer_node*) #1

declare dso_local i32 @luaL_pushresult(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
